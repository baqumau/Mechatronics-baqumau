/* This program was made for using WF32 as data storage station through uSD card peripheral.
Unfortunately ChipKit WF32 with PLATFORMIO framework does not work appropriately.*/
// ChipKit WF32 works to 80 Mhz...
//---------------------------------------------------------------------------------------------------------------
// Defining mathematical values:
#define _USE_MATH_DEFINES
// Defining configuration values:
#define FPB 80E6                                                        // Peripheral bus clock (PBCLK) frequency.
#define desired_baudrate_1 20E5                                         // Desired baud rate for communication via UART 1 module.
#define desired_baudrate_4 20E5                                         // Desired baud rate for communication via UART 4 module.
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
//---------------------------------------------------------------------------------------------------------------
// Creating a file:
File baqumau;
// Default SD chip select for ChipKit WF32 devices:
const unsigned int chipSelect_SD_default = 51;                          // Selecting the correct pin for ChipKit WF32.
const unsigned int chipSelect_SD = chipSelect_SD_default;
//---------------------------------------------------------------------------------------------------------------
// Defining the variables used in this sketch:
const unsigned int bufferSize_0 = 256;                                  // buffer length 0.
const unsigned int bufferSize_1 = 64;                                   // buffer length 1.
const unsigned int bufferSize_2 = 16;                                   // buffer length 2.
const unsigned int varQty = 9*Robots_Qty + 1;                           // Quantity of state varaibles that must be saved.
char character_1;                                                       // Variable where received character from UART 1 is saved.
char character_4;                                                       // Variable where received character from UART 4 is saved.
char measurements[bufferSize_0];                                        // Variable to arrange the measured variables.
bool flagcommand_0 = false;                                             // Available flag command 0 (It is used to control UART receiving data).
//---------------------------------------------------------------------------------------------------------------
// Creating data structure for UART 4 peripheral:
Data_Struct UART4 = createDataStruct(bufferSize_0,2,varQty,bufferSize_2);
// Creating a robot formation structure for arranging their relevant variables:
Formation FMR = createFormation(Robots_Qty);                            // Create the OMRs formation structure.
//---------------------------------------------------------------------------------------------------------------
// Receiving data interrupt for UART 1 module:
void __attribute__((interrupt)) UART1_RX_Handler(){
  //-------------------------------------------------------------------------------------------------------------
  // Put interrupt code here:
  character_1 = 0x00;                                                   // Clear character receiving variable.
  character_1 = U1RXREG;                                                // Variable to save received character by UART 1 module.
  Serial.println(UART4.charBuffer);                                     // Print character through UART 1.
  //-------------------------------------------------------------------------------------------------------------
  IFS0CLR = 0x08000000;                                                 // Clear the UART 1 receiver interrupt status flag.
}
//---------------------------------------------------------------------------------------------------------------
// Receiving data interrupt for UART 4 module:
void __attribute__((interrupt)) UART4_RX_Handler(){
  character_4 = 0x00;                                                   // Clear character receiving variable.
  character_4 = U4RXREG;                                                // Variable to save received character by UART 4 module.
  add_2_charBuffer(&UART4,character_4);                                 // Adding character to data buffer assigned to UART 4 module.
  //-------------------------------------------------------------------------------------------------------------
  // Taking values from UART 4 module:
  // If streaming data is completely added to char buffer of UART 4 structure:
  if(UART4.flag[1]){
    int i;                                                              // Declaration of i as index integer variable.
    digitalWrite(PIN_LED5,HIGH);                                        // Turn led 5 on to indicate that data is completely added to the char buffer of UART 4 structure.
    for(i = 0; i < varQty; i++){
      initString(UART4.MAT3.data[0][i],UART4.MAT3.zSize);               // Initialize string-type data set arranged in MAT3 within UART4 structure.
    }
    classify_charBuffer(&UART4);                                        // Classify data from assigned buffer to UART 4 struct data matrix.
    init_charBuffer(&UART4);                                            // Initialize char-type data buffer associated to UART 4.
    flagcommand_0 = true;                                               // Set flagcommand 0 to TRUE.
  }
  digitalWrite(PIN_LED5,LOW);                                           // Turn led 5 off to indicate that board is exiting from this interrupt.
  IFS2CLR = 0x00000010;                                                 // Clear the UART 4 receiver interrupt status flag.
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
// Configuring and enabling UART 4 module (with receiving data interrupt):
void start_uart_4_module(){
  uint16_t baudrate_reg = ((FPB/desired_baudrate_4)/4) - 1;             // Calculating baud rate register with BRGH = 1.
  U4BRG = baudrate_reg;                                                 // Setting Baud rate.
  U4STA = 0x0;                                                          // Clear UART 4 Status and Control Register.
  U4MODE = 0x8008;                                                      // Enable UART 4 module for BRGH = 1, 8-bit data, no parity, and 1 stop bit.
  U4STASET = 0x1005400;                                                 // Enable Transmit and Receive;
                                                                        // Automatic Address Detect mode is enabled.
                                                                        // (UTXISEL = 1), Interrupt flag bit is set when all characters have been transmitted;
                                                                        // (URXISEL = 0), Interrupt flag bit is set when at least a character is received.
  setIntVector(_UART_4_VECTOR,UART4_RX_Handler);                        // Setting interruption vector for UART 4 receiver.
  IPC12SET = 0x00001100;                                                // Set interrupt priority of UART 4 receiver to nivel 4, and sub-priority to nivel 1.
  IFS2CLR = 0x00000010;                                                 // Clear the UART 4 receiver interrupt status flag.
  IEC2SET = 0x00000010;                                                 // Enable the UART 4 receiver interrupt.
}
//---------------------------------------------------------------------------------------------------------------
// Main setup instructions:
void setup(){
  int i;                                                                // Declaration of i as integer variable.
  pinMode(PIN_LED3,OUTPUT);                                             // Configuring LED 3 as output.
  pinMode(PIN_LED4,OUTPUT);                                             // Configuring LED 4 as output.
  pinMode(PIN_LED5,OUTPUT);                                             // Configuring LED 5 as output.
  pinMode(PIN_LED6,OUTPUT);                                             // Configuring LED 5 as output.
  digitalWrite(PIN_LED3,LOW);                                           // Turn led 3 off.
  digitalWrite(PIN_LED4,LOW);                                           // Turn led 4 off.
  digitalWrite(PIN_LED5,LOW);                                           // Turn led 5 off.
  digitalWrite(PIN_LED6,LOW);                                           // Turn led 6 off.
  //-------------------------------------------------------------------------------------------------------------
  // Enable multi-vector interrupts:
  INTCONbits.MVEC = 1;
  __builtin_enable_interrupts();
  //-------------------------------------------------------------------------------------------------------------
  // Configuring serial ports (UARTs):
  start_uart_1_module();                                                // Enable UART 1 module.
  start_uart_4_module();                                                // Enable UART 4 module.
  init_charBuffer(&UART4);                                              // Initialize char-type data buffer of UART 4.
  for(i = 0; i < varQty; i++){
    initString(UART4.MAT3.data[0][i],UART4.MAT3.zSize);                 // Initialize string-type data set arranged in MAT3 within UART4 structure.
  }
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
  Serial.println("Removing File Sep2224a.txt...");
  SD.remove("Sep2224a.txt");
  Serial.println("Done...");
  // Open a new file. Note that only one file can be open at a time, so you have to close this one before opening another.
  // Name of new file must be defined only with eight characters.
  Serial.println("Sep2224a.txt...");
  baqumau = SD.open("Sep2224a.txt",FILE_WRITE);                         // Open the file for start to write.
  baqumau.print("measurements = [");                                    // Writing data in microSD.
  Serial.println("Done...");
  delayMicroseconds(50);                                                // 50 microseconds delay.
}
//---------------------------------------------------------------------------------------------------------------
// Main loop instructions:
void loop(){
  int i;                                                                // Declaration of i as index integer variable.
  if(UART4.identifier == 0 && flagcommand_0){
    flagcommand_0 = false;                                              // Reset flag command 0 to FALSE.
    snprintf(measurements,bufferSize_0,"%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s;",UART4.MAT3.data[0][0],UART4.MAT3.data[0][1],UART4.MAT3.data[0][2],UART4.MAT3.data[0][3],UART4.MAT3.data[0][4],UART4.MAT3.data[0][5],UART4.MAT3.data[0][6],UART4.MAT3.data[0][7],UART4.MAT3.data[0][8],UART4.MAT3.data[0][9],UART4.MAT3.data[0][10],UART4.MAT3.data[0][11],UART4.MAT3.data[0][12],UART4.MAT3.data[0][13],UART4.MAT3.data[0][14],UART4.MAT3.data[0][15],UART4.MAT3.data[0][16],UART4.MAT3.data[0][17],UART4.MAT3.data[0][18]);
    baqumau.println(measurements);                                      // Writes data in microSD.
    Serial.println(measurements);                                       // Print measured data through UART 1.
    initString(measurements,bufferSize_0);                              // Clear measurements buffer.
    digitalWrite(PIN_LED3,HIGH);                                        // Turn led 3 on to indicate that board is writing on microSD.
  }
  else if(UART4.identifier == 1 && flagcommand_0){
    flagcommand_0 = false;                                              // Reset flag command 0 to FALSE.
    baqumau.println("];");                                              // Writing on microSD.
    baqumau.close();                                                    // Closing the writing file.
    Serial.println("Streaming data was completed..!");                  // Print ending message via UART 1.
    for(i = 0; i < varQty; i++){
      initString(UART4.MAT3.data[0][i],UART4.MAT3.zSize);               // Initialize string-type data set arranged in MAT3 within UART4 structure.
    }
    digitalWrite(PIN_LED3,LOW);                                         // Turn led 3 off for show finish of writing on microSD.
  }
  else NOP;                                                             // No operation cycle.
}
//---------------------------------------------------------------------------------------------------------------
// No more...
//---------------------------------------------------------------------------------------------------------------
