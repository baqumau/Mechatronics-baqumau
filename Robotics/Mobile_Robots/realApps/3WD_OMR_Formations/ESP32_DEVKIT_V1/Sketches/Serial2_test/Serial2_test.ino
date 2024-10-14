//-----------------------------------------------------------------------------------
// Defining mathematical and configuration values:
#define APB_CLK 80.0E6                                                            // Clock of the Advanced Peripheral Bus (80 Mhz).
#define bufferSize_uart 256                                                       // Value for setting the receiving buffer size.
#define Baud_Rate_1 921600                                                        // Baud rate value for UART 0 communication.
#define Baud_Rate_2 20E5                                                          // Baud rate value for UART 2 communication.
//-----------------------------------------------------------------------------------
// Including libraries to the program:
#include <HardwareSerial.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
//-----------------------------------------------------------------------------------
// Assign UART2:
HardwareSerial MySerial(1);                                                       // Creating structure to handle UART 2.
//-----------------------------------------------------------------------------------
// Defining the used variables in this sketch:
const unsigned int RXD2 = 16;                                                     // Choosing this pin as UART 1 receiving data.
const unsigned int TXD2 = 17;                                                     // Choosing this pin as UART 1 transmitting data.
const unsigned int bufferSize_str = 64;                                           // buffer length for characters string.
char character_1;                                                                 // Variable to save received character by UART 0 module.
char character_2;                                                                 // Variable to save received character by UART 2 module.
//-----------------------------------------------------------------------------------
void setup(){
  //---------------------------------------------------------------------------------
  // Enabling UART communications:
  // Initialize serial monitor (UART 0):
  Serial.begin(Baud_Rate_1);                                                      // Open a serial connection (UART 0).
  // Initialize second serial port (UART 2):
  MySerial.setRxBufferSize(bufferSize_uart);                                      // Standard Arduino has 64 bytes.
                                                                                  // ESP32 has 256 bytes.
                                                                                  // Call must come before begin().
  MySerial.begin(Baud_Rate_2,SERIAL_8N1,RXD2,TXD2);                               // Open a serial connection (UART 2).
}
//-----------------------------------------------------------------------------------
void loop(){
  // Putting the main code here, to run repeatedly:
  int i, j;                                                                       // Declaration of i and j as integer variables.
  if(MySerial.available() > 0 || Serial.available() > 0){
    while(Serial.available() > 0){
      character_1 = 0x00;                                                         // Defining character 1.
      character_1 = Serial.read();                                                // Last received character from UART 0.
      Serial.print(character_1);                                                  // Print character 1 through UART 0.
      MySerial.print(character_1);                                                // Print character 1 through UART 2.
    }
    while(MySerial.available() > 0){
      character_2 = 0x00;                                                         // Defining character 2.
      character_2 = MySerial.read();                                              // Last received character from UART 0.
      Serial.print(character_2);                                                  // Print character 1 through UART 0.
    }
  }
  else NOP();                                                                     // No operation cycle.
}
