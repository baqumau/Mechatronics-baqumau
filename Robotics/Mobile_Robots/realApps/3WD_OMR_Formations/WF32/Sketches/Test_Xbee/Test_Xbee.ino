/* This program was made for testing Xbee communication between two devices.
Unfortunately ChipKit WF32 with ARDUINO framework in PlatformIO does not work appropriately.*/
// ChipKit WF32 works to 80 Mhz...
//---------------------------------------------------------------------------------------------------------------
// Defining configuration values:
#define FPB 80E6                                                        // Peripheral bus clock (PBCLK) frequency.
#define desired_baudrate_1 20E5                                         // Desired baud rate for communication via UART 1 module.
#define desired_baudrate_4 115200                                       // Desired baud rate for communication via UART 4 module.
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
// Choosing pin that commands the reset of Xbee device:
const unsigned int RST = 38;                                            // RST pin of the XBee USB adapter is connected to a GPIO pin on your microcontroller for reset the XBee module.
//---------------------------------------------------------------------------------------------------------------
// Receiving data interrupt for UART 1 module:
void __attribute__((interrupt)) UART1_RX_Handler(){
  digitalWrite(PIN_LED6,HIGH);                                          // Turn led 6 to ON.
  int i;                                                                // Declaration of i as index integer variable.
  while (!U1STAbits.URXDA);                                             // Wait until data is available.
  char character_1 = U1RXREG;                                           // Variable to save received character by UART 1 module.
  //-------------------------------------------------------------------------------------------------------------
  IFS0CLR = 0x08000000;                                                 // Clear the UART 1 receiver interrupt status flag.
  Serial1.print(character_1);                                           // Sends character to UART 4.
  digitalWrite(PIN_LED6,LOW);                                           // Turn led 6 to OFF.
}
//---------------------------------------------------------------------------------------------------------------
// Receiving data interrupt for UART 4 module:
void __attribute__((interrupt)) UART4_RX_Handler(){
  int i;                                                                // Declaration of i as index integer variable.
  digitalWrite(PIN_LED5,HIGH);                                          // Turn led 5 to ON.
  while (!U4STAbits.URXDA);                                             // Wait until data is available.
  char character_4 = U4RXREG;                                           // Variable to save received character by UART 4 module.
  //-------------------------------------------------------------------------------------------------------------
  IFS2CLR = 0x00000010;                                                 // Clear the UART 4 receiver interrupt status flag.
  Serial.print(character_4);                                            // Sends character to UART 1.
  digitalWrite(PIN_LED5,LOW);                                           // Turn led 5 to OFF.
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
// Configuring and enabling UART 4 module (with receiving data interrupt):
void start_uart_4_module(){
  uint16_t baudrate_reg = round(((FPB/desired_baudrate_4)/16) - 1);     // Calculating baud rate register with BRGH = 0.
  U4BRG = baudrate_reg;                                                 // Setting Baud rate.
  U4STA = 0x0;                                                          // Clear UART4 Status and Control Register.
  U4MODE = 0x8000;                                                      // Enable UART 4 module for BRGH = 0, 8-bit data, no parity, and 1 stop bit.
  U4STASET = 0x1005400;                                                 // Enable Transmit and Receive;
                                                                        // Automatic Address Detect mode is enabled.
                                                                        // (UTXISEL = 1), Interrupt flag bit is set when all characters have been transmitted;
                                                                        // (URXISEL = 0), Interrupt flag bit is set when at least a character is received.
  setIntVector(_UART_4_VECTOR,UART4_RX_Handler);                        // Setting interruption vector for UART 1 receiver.
  IPC12SET = 0x00001100;                                                // Set interrupt priority of UART 4 receiver to nivel 4, and sub-priority to nivel 1.
  IFS2CLR = 0x00000010;                                                 // Clear the UART 4 receiver interrupt status flag.
  IEC2SET = 0x00000010;                                                 // Enable the UART 4 receiver interrupt.
}
//---------------------------------------------------------------------------------------------------------------
void setup(){
  // put your setup code here, to run once:
  pinMode(PIN_LED5,OUTPUT);                                             // Configuring LED 6 as output.
  pinMode(PIN_LED6,OUTPUT);                                             // Configuring LED 6 as output.
  pinMode(RST,OUTPUT);                                                  // Configuring pin 38 as output.
  digitalWrite(PIN_LED5,LOW);                                           // Turn led 5 to off.
  digitalWrite(PIN_LED6,LOW);                                           // Turn led 6 to off.
  digitalWrite(RST,HIGH);                                               // Turn RST pin to ON for establishing UART communication with Xbee.
  //-------------------------------------------------------------------------------------------------------------
  // Configuring serial ports (UARTs):
  start_uart_1_module();                                                // Enable UART 1 module again.
  start_uart_4_module();                                                // Enable UART 4 module again.
}
//---------------------------------------------------------------------------------------------------------------
void loop(){
  // put your main code here, to run repeatedly:
  // Serial1.println("baqumau-baqumau-baqumau");
  // delay(50);
}
