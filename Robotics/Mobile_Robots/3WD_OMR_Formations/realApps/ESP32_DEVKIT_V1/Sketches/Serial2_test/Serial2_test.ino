//-----------------------------------------------------------------------------------
// Defining mathematical and configuration values:
#define APB_CLK 80.0E6                                                            // Clock of the Advanced Peripheral Bus (80 Mhz).
#define bufferSize_uart 256                                                       // Value for setting the receiving buffer size.
#define Baud_Rate_1 921600                                                        // Baud rate value for UART 0 communication.
#define Baud_Rate_2 115200                                                        // Baud rate value for UART 2 communication.
//-----------------------------------------------------------------------------------
// Including libraries to the program:
#include <Arduino.h>
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
const unsigned int LED2 = 2;                                                      // Blue led of used ESP32.
const unsigned int bufferSize_str = 64;                                           // buffer length for characters string.
unsigned int long pulseTime = 0;                                                  // Variable to save pulse time when data is received by UART.
unsigned int long count = 0;                                                      // Counter.
char character_1;                                                                 // Variable to save received character by UART 0 module.
char character_2;                                                                 // Variable to save received character by UART 2 module.
char measuredTime[24];                                                            // Char variable to save message about required time in the reception data via Serial 2 peripheral.   
hw_timer_t *Timer2 = NULL;                                                        // Pointer declaration for timer 2 execution.
bool flagcommand = false;                                                         // Required flag to count the time.
//-----------------------------------------------------------------------------------
// Putting function declarations here:
void Timer2_Setup();                                                              // Declaration of Timer2_Setup function.
void IRAM_ATTR onTimer2_ISR();                                                    // Declaration of Timer2_ISR function.
//-----------------------------------------------------------------------------------
// Timer 2 interrupt at 10 Hz:
void IRAM_ATTR onTimer2_ISR(){
  // Code for interrupt by Timer 2 is placed below:
  digitalWrite(LED2,!digitalRead(LED2));                                          // Blink blue led.
}
//-----------------------------------------------------------------------------------
// Setting Timer 2 and configuring its interruption function (at 10 Hz):
void Timer2_Setup(){
  Timer2 = timerBegin(10000000);                                                  // Set timer frequency to 10 MHz.
  timerAttachInterrupt(Timer2,&onTimer2_ISR);                                     // Attaches the Timer 2 interrupt event with a desired ISR_Handler callback function (Timer2_ISR), that will be executed periodically.
  timerAlarm(Timer2,1000000,true,0);                                              // Set alarm to call Timer2_ISR function every 0.1 seconds (value in microseconds). Repeat the alarm (third parameter) with unlimited count = 0 (fourth parameter).
}
//-----------------------------------------------------------------------------------
void setup(){
  pinMode(LED2,OUTPUT);                                                           // Defines GPIO 02 as output.
  //---------------------------------------------------------------------------------
  // Enabling UART communications:
  // Initialize serial monitor (UART 0):
  Serial.begin(Baud_Rate_1);                                                      // Open a serial connection (UART 0).
  // Initialize second serial port (UART 2):
  MySerial.setRxBufferSize(bufferSize_uart);                                      // Standard Arduino has 64 bytes.
                                                                                  // ESP32 has 256 bytes.
                                                                                  // Call must come before begin().
  MySerial.begin(Baud_Rate_2,SERIAL_8N1,RXD2,TXD2);                               // Open a serial connection (UART 2).
  //---------------------------------------------------------------------------------
  // Enable Timer 2 interrupt at 10 Hz:
  Timer2_Setup();                                                                 // Call Timer2_setup function.
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
      if(character_2 == '\n'){
        pulseTime = timerRead(Timer2);                                            // Read the Compare Timer 2 register.
        timerRestart(Timer2);                                                     // Restart timer 2.
        float Time = 8.0f*pulseTime/APB_CLK;                                      // Pulse time is translated from ticks to seconds.
        sprintf(measuredTime,"Time: %1.8f\n",Time);
        Serial.print(measuredTime);                                               // Print time of data reception.
      }
    }
  }
  else NOP();                                                                     // No operation cycle.
}
