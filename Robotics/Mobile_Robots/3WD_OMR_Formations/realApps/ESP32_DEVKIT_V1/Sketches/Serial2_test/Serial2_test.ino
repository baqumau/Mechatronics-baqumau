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
unsigned int long pulsetime = 0;                                                  // Variable to save pulse time when data is received by UART.
char character_1;                                                                 // Variable to save received character by UART 0 module.
char character_2;                                                                 // Variable to save received character by UART 2 module.
hw_timer_t *Timer2_Cfg = NULL;                                                    // Pointer declaration for timer 2 execution.
bool flagcommand = false;                                                         // Required flag to count the time.
//-----------------------------------------------------------------------------------
// Putting function declarations here:
void Timer2_Setup();                                                              // Declaration of Timer2_Setup function.
void IRAM_ATTR Timer2_ISR();                                                      // Declaration of Timer2_ISR function.
//-----------------------------------------------------------------------------------
// Timer 2 interrupt at 10 Hz:
void IRAM_ATTR Timer2_ISR(){
  // Code for interrupt by Timer 2 is placed below:
}
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
  //---------------------------------------------------------------------------------
  // Enable Timer 2 interrupt at 10 Hz:
  Timer2_Setup();                                                                 // Call Timer2_setup function.
}
//-----------------------------------------------------------------------------------
// Setting Timer 2 and configuring its interruption function (at 10 Hz):
void Timer2_Setup(){
  Timer2_Cfg = timerBegin(10);                                                    // Set timer frequency to 10 Hz.
  timerAttachInterrupt(Timer2_Cfg,&Timer2_ISR);                                   // Attaches the Timer 2 interrupt event with a desired ISR_Handler callback function (Timer2_ISR), that will be executed periodically.
  timerAlarm(Timer2_Cfg,100000,true,0);                                           // Set alarm to call Timer2_ISR function every 0.1 seconds (value in microseconds). Repeat the alarm (third parameter) with unlimited count = 0 (fourth parameter).
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
        flagcommand = false;                                                      
        pulsetime = timerRead(Timer2_Cfg) - pulsetime;                            // Read the Compare Timer 2 register.
      }
    }
  }
  else NOP();                                                                     // No operation cycle.
  if(!flagcommand){
    pulsetime = timerRead(Timer2_Cfg);                                            // Read the Compare Timer 2 register.
    flagcommand = true;                                                           // Turn flagcommand ON.
  }
}
