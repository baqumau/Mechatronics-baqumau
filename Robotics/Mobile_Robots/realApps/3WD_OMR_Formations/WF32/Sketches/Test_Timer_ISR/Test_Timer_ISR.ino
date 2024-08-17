/* This program test the use of timer 5 within an interrupt.*/
// ChipKit WF32 works to 80 Mhz...
// Defining mathematical values:
#define _USE_MATH_DEFINES
// Defining configuration values:
#define prescaler 8                                             // Prescaler for the ticks.
#define freq_hz 250                                             // Frequency for instructions execution.
#define ticks_per_second 80000000                               // Ticks of machine's clock.
//---------------------------------------------------------------------------------------------------------------
// Including libraries to the program:
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
//---------------------------------------------------------------------------------------------------------------
// Defining the variables used in this sketch:
uint32_t counter = 0;                                           // Interrupts counter.
//---------------------------------------------------------------------------------------------------------------
// Timer 5 interrupt:
void __attribute__((interrupt)) Timer5Handler(){
  IFS0CLR = 0x00100000;                                         // Clear the Timer 5 interrupt status flag.
  digitalWrite(PIN_LED4,HIGH);                                  // Turn led 4 on.
  counter++;                                                    // Increasing the counter.
  if(counter == 250){
    digitalWrite(PIN_LED5,HIGH);                                // Turn led 5 on.
  }
  else if(counter == 500){
    counter = 0;                                                // Reset counter.
    digitalWrite(PIN_LED5,LOW);                                 // Turn led 5 off.
  }
}
//---------------------------------------------------------------------------------------------------------------
// Configuring Timer 5 to generate timer interrupts:
void start_timer_interrupt(){
  uint32_t period = ticks_per_second/(prescaler*freq_hz);       // Setting interrupt period calculated in ticks.
  T5CON = 0x0;                                                  // Stop 16-bit Timer 5 and clear control register.
  T5CONSET = 0x0030;                                            // Enable 16-bit mode, prescaler at 1:8,
  TMR5 = 0x0;                                                   // Clear timer register.
  PR5 = period;                                                 // Setting the period on Timer 5.
  setIntVector(_TIMER_5_VECTOR,Timer5Handler);                  // Setting interruption vector for Timer 5.
  IPC5SET = 0x0000001F;                                         // Set interrupt priority of Timer 5 to nivel 7, sub-priority of Timer 5 to nivel 3.
  IFS0CLR = 0x00100000;                                         // Clear the Timer 5 interrupt status flag.
  IEC0SET = 0x00100000;                                         // Enable Timer 5 interrupt.
  T5CONSET = 0x8000;                                            // Start the Timer 5.
}
//---------------------------------------------------------------------------------------------------------------
void setup(){
  pinMode(PIN_LED4,OUTPUT);                                     // Configuring LED 4 as output.
  pinMode(PIN_LED5,OUTPUT);                                     // Configuring LED 5 as output.
  start_timer_interrupt();                                      // Start Timer interrupt.
}
//---------------------------------------------------------------------------------------------------------------
void loop(){
  asm("nop");                                                   // No operation.
}
//---------------------------------------------------------------------------------------------------------------
