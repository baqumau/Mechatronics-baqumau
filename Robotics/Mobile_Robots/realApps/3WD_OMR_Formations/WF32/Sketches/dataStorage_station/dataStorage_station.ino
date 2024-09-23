/* This program was made for using WF32 as data storage station through uSD card peripheral.
Unfortunately ChipKit WF32 with ARDUINO framework does not work appropriately.*/
// ChipKit WF32 works to 80 Mhz...
//---------------------------------------------------------------------------------------------------------------
// Defining mathematical values:
#define _USE_MATH_DEFINES
// Defining configuration values:
#define FPB 80E6                                                        // Peripheral bus clock (PBCLK) frequency.
#define desired_baudrate_1 20E5                                         // Desired baud rate for communication via UART 1 module.
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
const unsigned int bufferSize = 128;                                    // buffer length.
char dataChain[bufferSize];                                             // Auxilliary string-type variable to arrange obtained data from UART 1.
//---------------------------------------------------------------------------------------------------------------
// Creating data structure for UART 1 peripheral:
Data_Struct UART1 = createDataStruct(bufferSize,2,6*Robots_Qty,16);
//---------------------------------------------------------------------------------------------------------------
// Receiving data interrupt for UART 1 module:
void __attribute__((interrupt)) UART1_RX_Handler(){
  int i;                                                                // Declaration of i as index integer variable.
  digitalWrite(PIN_LED6,HIGH);                                          // Turn led 6 on.
  char character = U1RXREG;                                             // Variable to save received character by UART 1 module.
  add_2_charBuffer(&UART1,character);                                   // Adding character to data buffer assigned to UART 1 module.
  //-------------------------------------------------------------------------------------------------------------
  // Taking values from UART 1 module:
  // If streaming data is completely added to char buffer of UART1 struct:
  if(UART1.flag[1]){
    classify_charBuffer(&UART1);                                        // Classify data from assigned buffer to UART1 struct data matrix.
    switch(UART1.identifier){
      case 0:
      baqumau.print(UART1.charBuffer);                                  // Writing data in microSD.
      digitalWrite(PIN_LED3,HIGH);                                      // Turn led 3 on to indicate that board is writing on microSD.
      case 1:
      baqumau.println("];");                                            // Writing on microSD.
      baqumau.close();                                                  // Closing the write file.
      digitalWrite(PIN_LED3,LOW);                                       // Turn led 3 off for show finish of writing on microSD.
    }
    init_charBuffer(&UART1);                                            // Initialize char-type data buffer associated to UART 1.
    digitalWrite(PIN_LED6,LOW);                                         // Turn led 6 off.
  }
  IFS0CLR = 0x08000000;                                                 // Clear the UART 1 receiver interrupt status flag.
}
//---------------------------------------------------------------------------------------------------------------
// Configuring and enabling UART 1 module (with receiving data interrupt):
void start_uart_1_module(){
  uint16_t baudrate_reg = ((FPB/desired_baudrate_1)/4) - 1;             // Calculating baud rate register with BRGH = 1.
  U1BRG = baudrate_reg;                                                 // Setting Baud rate.
  U1STA = 0x0;                                                          // Clear UART1 Status and Control Register.
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
// Main setup instructions:
void setup(){
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
  Serial.println("Sep2224a.txt...");
  baqumau = SD.open("Sep2224a.txt",FILE_WRITE);                         // Open the file for start to write.
  baqumau.print("measurements = [");                                    // Writing data in microSD.
  Serial.println("Done...");
  delayMicroseconds(100);                                               // 100 microseconds delay.
}
//---------------------------------------------------------------------------------------------------------------
// Main loop instructions:
void loop(){
  NOP;                                                                  // No operation cycle.
}
//---------------------------------------------------------------------------------------------------------------
// No more...