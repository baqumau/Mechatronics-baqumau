/* This program was made for testing Xbee communication between two devices.
Unfortunately ChipKit WF32 with ARDUINO framework in PlatformIO does not work appropriately.*/
// ChipKit WF32 works to 80 Mhz...
//---------------------------------------------------------------------------------------------------------------
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
//---------------------------------------------------------------------------------------------------------------
// Defining the variables used in this sketch:
const unsigned int bufferSize = 64;                                     // buffer length.
char character_1;                                                       // Variable to save received character by UART 0 module.
char character_2;                                                       // Variable to save received character by UART 2 module.
//---------------------------------------------------------------------------------------------------------------
void setup(){
  // put your setup code here, to run once:
  pinMode(PIN_LED5,OUTPUT);                                             // Configuring LED 6 as output.
  pinMode(PIN_LED6,OUTPUT);                                             // Configuring LED 6 as output.
  digitalWrite(PIN_LED5,LOW);                                           // Turn led 5 to off.
  digitalWrite(PIN_LED6,LOW);                                           // Turn led 6 to off.
  //-------------------------------------------------------------------------------------------------------------
  // Configuring serial ports (UARTs):
  Serial.begin(desired_baudrate_1);                                     // Enable UART 1 module again.
  Serial1.begin(desired_baudrate_4);                                    // Enable UART 4 module again.
}
//---------------------------------------------------------------------------------------------------------------
void loop(){
  // put your main code here, to run repeatedly:
  int i, j;                                                             // Declaration of i and j as integer variables.
  if(Serial.available() > 0 || Serial1.available() > 0){
    while(Serial.available() > 0){
      character_1 = 0x00;                                               // Defining character 1.
      character_1 = Serial.read();                                      // Last received character from UART 0.
      Serial.print(character_1);                                        // Print character 1 through UART 0.
      Serial1.print(character_1);                                       // Print character 1 through UART 2.
    }
    while(Serial1.available() > 0){
      character_2 = 0x00;                                               // Defining character 2.
      character_2 = Serial1.read();                                     // Last received character from UART 0.
      Serial.print(character_2);                                        // Print character 1 through UART 0.
    }
  }
  else NOP;                                                             // No operation cycle.
}
