/* This program test the use of timer 5 within an interrupt.*/
// ChipKit WF32 works to 80 Mhz...
//---------------------------------------------------------------------------------------------------------------
// Defining mathematical values:
#define _USE_MATH_DEFINES
// Defining configuration values:
#define NOP __asm__ __volatile__ ("nop\n\t")                            // Nop instruction (asm).
//---------------------------------------------------------------------------------------------------------------
// Including libraries to the program:
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
/* #include <SD.h> */
#include <Keyboard.h>
#include <KeyboardLayout.h>
#include <Keyboard_da_DK.h>
#include <Keyboard_de_DE.h>
#include <Keyboard_es_ES.h>
#include <Keyboard_fr_FR.h>
#include <Keyboard_hu_HU.h>
#include <Keyboard_it_IT.h>
#include <Keyboard_pt_PT.h>
#include <Keyboard_sv_SE.h>
//---------------------------------------------------------------------------------------------------------------
// Defining the variables used in this sketch:
char caracter;                                                          // Variable to save received character by UART module.
//---------------------------------------------------------------------------------------------------------------
// Reading keyboard function:
void InputKeyboard(){
  if(Serial.available()>0){                                             // Test if serial port is receiving data.
    // read incoming serial data:
    caracter = Serial.read();                                           // Key reading.
    // Type the next ASCII value from what you received:
    Keyboard.write(caracter + 1);
  }
  Serial.flush();
}
//---------------------------------------------------------------------------------------------------------------
void setup(){
  // put your setup code here, to run once:
  pinMode(PIN_LED3,OUTPUT);                                             // Configuring LED 3 as output.
  pinMode(PIN_LED4,OUTPUT);                                             // Configuring LED 4 as output.
  pinMode(PIN_LED5,OUTPUT);                                             // Configuring LED 5 as output.
  pinMode(PIN_LED6,OUTPUT);                                             // Configuring LED 5 as output.
  digitalWrite(PIN_LED3,LOW);                                           // Turn led 3 off.
  digitalWrite(PIN_LED4,LOW);                                           // Turn led 4 off.
  digitalWrite(PIN_LED5,LOW);                                           // Turn led 5 off.
  digitalWrite(PIN_LED6,LOW);                                           // Turn led 6 off.
  //-------------------------------------------------------------------------------------------------------------
  // Configuring serial ports (UARTs):
  // Open the serial port:
  Serial.begin(9600);                                                   // Enable serial port No. 1.
  // Initialize control over the keyboard:
  Keyboard.begin();
}
//---------------------------------------------------------------------------------------------------------------
void loop(){
  // put your main code here, to run repeatedly:
  InputKeyboard();                                                      // Reading keyboard.
}
//---------------------------------------------------------------------------------------------------------------
