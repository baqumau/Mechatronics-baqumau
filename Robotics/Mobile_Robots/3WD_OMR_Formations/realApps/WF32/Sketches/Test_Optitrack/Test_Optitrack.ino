/* This program was made for testing Optitrack data adquisition through NATNET SDK
application that links Motive and MATLAB softwares. Received data is arranged and stored
in uSD card.*/
// ChipKit WF32 works to 80 Mhz...
//---------------------------------------------------------------------------------------------------------------
// Defining mathematical values:
#define _USE_MATH_DEFINES
// Defining configuration values:
#define FPB 80E6                                                        // Peripheral bus clock (PBCLK) frequency.
#define desired_baudrate_1 20E5                                         // Desired baud rate for communication via UART 1 module.
#define prescaler_3 16                                                  // Prescaler for the ticks of Timer 3.
#define freq_hz_3 160                                                   // Frequency in Hz for instructions execution of Timer 3.
#define ticks_per_second 80E6                                           // Ticks per seconds of machine's clock.
#define exe_minutes 5                                                   // Run time minutes.
#define NOP __asm__ __volatile__ ("nop\n\t")                            // Nop instruction (asm).
//---------------------------------------------------------------------------------------------------------------
// Including libraries to the program:
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <xc.h>                                                         // Include device-specific headers if needed.
#include <float.h>
#include <SD.h>
#include "src\baqumau\baqumau.h"                                        // My library.
#include "src\baqumau\3WD_OMRs_Controllers.h"                           // Controllers library.
#include "src\baqumau\3WD_OMRs_References.h"                            // References library.
//---------------------------------------------------------------------------------------------------------------
// Creating a file:
File baqumau;
// Default SD chip select for ChipKit WF32 devices:
const unsigned int chipSelect_SD_default = 51;                          // Selecting the correct pin for ChipKit WF32.
const unsigned int chipSelect_SD = chipSelect_SD_default;
//---------------------------------------------------------------------------------------------------------------
// Choosing pin that commands the reset of Xbee device:
const unsigned int RST = 38;                                            // RST pin of the XBee USB adapter is connected to a GPIO pin on your microcontroller for reset the XBee module.
//---------------------------------------------------------------------------------------------------------------
// Defining the variables used in this sketch:
const unsigned int bufferSize = 128;                                    // buffer length.
unsigned long final_iteration = 60*exe_minutes*freq_hz_3;               // Final iteration of program execution (by default: 5 minutes at "freq_hz_3" in Hz).
volatile bool flagcommand_0 = false;                                    // Available flag command 0.
volatile bool flagcommand_1 = false;                                    // Available flag command 1 (Auxiliary flag for time out protocole).
volatile uint32_t iterations = 0;                                       // Iterations counter in the program.
char character_1;                                                       // Variable to save received character from UART 1.
char measurements[bufferSize];                                          // Variable to arrange the measured variables.
//---------------------------------------------------------------------------------------------------------------
// Creating data structure for UART 1 peripheral:
Data_Struct UART1 = createDataStruct(bufferSize,1,3*Robots_Qty,16);
// Creating a robot formation structure for arranging their relevant variables:
Formation FMR = createFormation(Robots_Qty);                            // Create the OMRs formation structure.
//---------------------------------------------------------------------------------------------------------------
// Timer 3 interrupt (160 Hz):
void __attribute__((interrupt)) Timer_3_Handler(){
  IFS0CLR = 0x00001000;                                                 // Clear the Timer 3 interrupt status flag.
  if(iterations <= final_iteration) Serial.println(":9");               // Command sent to MATLAB to start or continue with linked streaming.
  else NOP;                                                             // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Configuring Timer 3 to generate timer interrupts:
void start_timer_3_interrupt(){
  uint16_t period = ticks_per_second/(prescaler_3*freq_hz_3);           // Setting interrupt period calculated in ticks.
  T3CON = 0x0;                                                          // Stop 16-bit Timer 3 and clear control register.
  T3CONSET = 0x0040;                                                    // Enable 16-bit mode, prescaler at 1:16.
  TMR3 = 0x0;                                                           // Clear timer register.
  PR3 = period;                                                         // Setting the period on Timer 3.
  setIntVector(_TIMER_3_VECTOR,Timer_3_Handler);                        // Setting interruption vector for Timer 3.
  IPC3SET = 0x00000012;                                                 // Set interrupt priority of Timer 3 to nivel 4, and sub-priority to nivel 2.
  IFS0CLR = 0x00001000;                                                 // Clear the Timer 3 interrupt status flag.
  IEC0SET = 0x00001000;                                                 // Enable Timer 3 interrupt.
  T3CONSET = 0x8000;                                                    // Start the Timer 3.
}
//---------------------------------------------------------------------------------------------------------------
// Receiving data interrupt for UART 1 module:
void __attribute__((interrupt)) UART1_RX_Handler(){
  int i;                                                                // Declaration of i as index integer variable.
  digitalWrite(PIN_LED6,HIGH);                                          // Turn led 6 on.
  character_1 = U1RXREG;                                                // Variable to save received character by UART 1 module.
  add_2_charBuffer(&UART1,character_1);                                 // Adding character to data buffer assigned to UART 1 module.
  //-------------------------------------------------------------------------------------------------------------
  // Taking values from UART 1 module:
  // If streaming data is completely added to char buffer of UART1 struct:
  if(UART1.flag[1]){
    flagcommand_1 = true;                                               // Start to check the time out state for UART 1 receiving data.
    classify_charBuffer(&UART1);                                        // Classify data from assigned buffer to UART 1 structure data matrix. 
    init_charBuffer(&UART1);                                            // Initialize char-type data buffer associated to UART 1.
    digitalWrite(PIN_LED6,LOW);                                         // Turn led 6 off.
    if(!flagcommand_0){
      //---------------------------------------------------------------------------------------------------------
      // Saving initial state variables:
      for(i = 0; i < 3*Robots_Qty; i++){
        FMR.q_k[i] = atof(UART1.MAT3.data[0][i]);                       // Saving pose of OMRs formation along global reference frame.
      }
      float angles_k[Robots_Qty] = {FMR.q_k[2], FMR.q_k[5]};            // Initial orientation vector in the robot space.
      if(FMR.CORq.flag[0] == false){
        initAngleConverter(FMR.CORq,angles_k);                          // Initialize angle conversion to absolute domain in the robot space.
      }
      computeCSVariables(FMR);                                          // Compute the cluster space variables of FMR formation.
      //---------------------------------------------------------------------------------------------------------
      iterations = 0;                                                   // Reset iterations.
      flagcommand_0 = true;                                             // Setting flag 0 to true.
    }
  }
  IFS0CLR = 0x08000000;                                                 // Clear the UART 1 receiver interrupt status flag.
}
//---------------------------------------------------------------------------------------------------------------
// Configuring and enabling UART 1 module (with receiving data interrupt):
void start_uart_1_module(){
  uint16_t baudrate_reg = ((FPB/desired_baudrate_1)/4) - 1;             // Calculating baud rate register with BRGH = 1.
  U1BRG = baudrate_reg;                                                 // Setting Baud rate.
  U1STA = 0x0;                                                          // Clear UART 1 Status and Control Register.
  U1MODE = 0x8008;                                                      // Enable UART 1 module for BRGH = 1, 8-bit data, no parity, and 1 stop bit.
  U1STASET = 0x1005400;                                                 // Enable Transmit and Receive;
                                                                        // Automatic Address Detect mode is enabled.
                                                                        // (UTXISEL = 1), Interrupt flag bit is set when all characters have been transmitted;
                                                                        // (URXISEL = 0), Interrupt flag bit is set when at least a character is received.
  setIntVector(_UART_1_VECTOR,UART1_RX_Handler);                        // Setting interruption vector for UART 1 receiver.
  IPC6SET = 0x0000000D;                                                 // Set interrupt priority of UART 1 receiver to nivel 3, and sub-priority to nivel 1.
  IFS0CLR = 0x08000000;                                                 // Clear the UART 1 receiver interrupt status flag.
  IEC0SET = 0x08000000;                                                 // Enable the UART 1 receiver interrupt.
}
//---------------------------------------------------------------------------------------------------------------
// Desabling UART 1 module:
void stop_uart_1_module(){
  U1STA = 0x0;                                                          // Clear UART 1 Status and Control Register.
  U1MODE = 0x00;                                                        // Disable UART 1 module.
  IEC0CLR = 0x08000000;                                                 // Disable the UART 1 receiver interrupt.
}
//---------------------------------------------------------------------------------------------------------------
// Main setup instructions:
void setup(){
  pinMode(PIN_LED3,OUTPUT);                                             // Configuring LED 3 as output.
  pinMode(PIN_LED4,OUTPUT);                                             // Configuring LED 4 as output.
  pinMode(PIN_LED5,OUTPUT);                                             // Configuring LED 5 as output.
  pinMode(PIN_LED6,OUTPUT);                                             // Configuring LED 5 as output.
  pinMode(RST,OUTPUT);                                                  // Configuring pin 38 as output.
  digitalWrite(PIN_LED3,LOW);                                           // Turn led 3 off.
  digitalWrite(PIN_LED4,LOW);                                           // Turn led 4 off.
  digitalWrite(PIN_LED5,LOW);                                           // Turn led 5 off.
  digitalWrite(PIN_LED6,LOW);                                           // Turn led 6 off.
  digitalWrite(RST,HIGH);                                               // Turn RST pin to HIGH for establishing UART communication with Xbee.
  //-------------------------------------------------------------------------------------------------------------
  // Enable multi-vector interrupts:
  INTCONbits.MVEC = 1;
  __builtin_enable_interrupts();
  //-------------------------------------------------------------------------------------------------------------
  // Configuring serial ports (UARTs):
  start_uart_1_module();                                                // Enable UART 1 module.
  init_charBuffer(&UART1);                                              // Initialize char-type data buffer of UART 1.  
  //-------------------------------------------------------------------------------------------------------------
  // Configuring SD Card:
  pinMode(chipSelect_SD_default,OUTPUT);
  digitalWrite(chipSelect_SD_default,HIGH);
  // Make sure the default chip select pin is set to so that shields that have a device that use the default CS pin
  // that are connected to the SPI bus do not hold drive bus...
  pinMode(chipSelect_SD,OUTPUT);
  digitalWrite(chipSelect_SD,HIGH);
  // we’ll use the initialization code from the utility libraries:
  // since we’re just testing if the card is working..!
  if(!SD.begin(chipSelect_SD)){
    Serial.println("initialization failed. Things to check:");
    Serial.println("* is a card is inserted?");
    Serial.println("* Is your wiring correct?");
    Serial.println("* did you change the chipSelect pin to match your shield or module?");
    return;
  }
  else{
    Serial.println("Wiring is correct and a card is present.");
  }
  // Delete the file:
  Serial.println("Removing File May0724a.txt...");
  SD.remove("May0724a.txt");
  Serial.println("Done...");
  // Open a new file. Note that only one file can be open at a time, so you have to close this one before opening another.
  // Name of new file must be defined only with eight characters.
  Serial.println("May0724a.txt...");
  baqumau = SD.open("May0724a.txt",FILE_WRITE);                         // Open the file for start to write.
  baqumau.print("measurements = [");                                    // Writing data in microSD.
  Serial.println("Done...");
  //-------------------------------------------------------------------------------------------------------------
  // Starting the program sample time:
  start_timer_3_interrupt();                                            // Start Timer 3 interrupt (MATLAB communication).
  delayMicroseconds(100);                                               // 100 microseconds delay.
}
//---------------------------------------------------------------------------------------------------------------
// Main loop instructions:
void loop(){
  int i;                                                                // Declaration of i as integer variable.
  if(iterations <= final_iteration){
    // Arranging data into the measurements vector:
    snprintf(measurements,bufferSize,"%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%i,%u;",FMR.q_k[0],FMR.q_k[1],FMR.q_k[2],FMR.q_k[3],FMR.q_k[4],FMR.q_k[5],iterations);
    baqumau.println(measurements);                                      // Writing data in microSD.
    digitalWrite(PIN_LED3,HIGH);                                        // Turn led 3 on.
    Serial.println(measurements);                                       // Write measurements via UART 1.
    initString(measurements,bufferSize);                                // Clear measurements data string.
  }
  else if(iterations > final_iteration && baqumau){
    baqumau.println("];");                                              // Writing on microSD.
    baqumau.close();                                                    // Closing the write file.
    digitalWrite(PIN_LED3,LOW);                                         // Turn led 3 off for show finish of writing on microSD.
    Serial.println(":10");                                              // Write stop command by UART 1.
    flagcommand_0 = false;                                              // Clear flag command 0.
    flagcommand_1 = false;                                              // Clear flag command 1.
    delayMicroseconds(10);                                              // 10 microseconds delay.
    stop_uart_1_module();                                               // Stop and disable UART 1 module.
  }
  else if(iterations <= final_iteration && flagcommand_1){
    iterations++;
    snprintf(measurements,bufferSize,"%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%u;",FMR.q_k[0],FMR.q_k[1],FMR.q_k[2],FMR.q_k[3],FMR.q_k[4],FMR.q_k[5],iterations);
    // baqumau.println(measurements);                                      // Writing data in microSD.
    digitalWrite(PIN_LED3,HIGH);                                        // Turn led 3 on.
    // Serial.println(measurements);                                       // Write measurements by UART 1.
    initString(measurements,bufferSize);                                // Clear measurements data string.
    flagcommand_1 = false;                                              // Setting flag 1 to false.
  }
  else NOP;                                                             // No operation.
}
//---------------------------------------------------------------------------------------------------------------
