/*  Embedded driver on OMR No. 2 (Black robot).
 1. ESP32 is Working at 240 Mhz (Bluetooth and WiFi);
 2. ESP32 is also Working at 80 Mhz (Timers). 
 3. DC motors have 1:40 as gear ratio.
 4. Encoder attached to DC motors generate 22 pulses per revolution (turning the magnet wheel):
      * 11 pulses by A channel.
      * 11 pulses by B channel.
 5. PWM signals configured to 1 Khz. */
//-----------------------------------------------------------------------------------
// Defining mathematical and configuration values:
#define _USE_MATH_DEFINES                                                         // Mathematical definitions.
#define APB_CLK 80.0E6                                                            // Clock of the Advanced Peripheral Bus (80 Mhz).
#define PWMs_Frequency 1000                                                       // Desired frequency for PWM signals in Hertz.
#define PWMs_Resolution 16                                                        // Desired resolution for PWM signals.
#define Baud_Rate 115200                                                          // Baud rate value for UART communications.
#define bufferSize_uart 1024                                                      // Value for setting the receiving buffer size.
#define PWM_Channel_0 0                                                           // Defining channel 0 for PWM signal.
#define PWM_Channel_1 1                                                           // Defining channel 1 for PWM signal.
#define PWM_Channel_2 2                                                           // Defining channel 2 for PWM signal.
//-----------------------------------------------------------------------------------
// Including libraries to the program:
#include <Arduino.h>
#include <Ps3Controller.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include <HardwareSerial.h>
#include "src/baqumau/3WD_OMRs_Controllers.h"
//-----------------------------------------------------------------------------------
// Assign UART2:
HardwareSerial MySerial(1);
//-----------------------------------------------------------------------------------
// Defining the used variables in this sketch:
uint8_t new_mac[8] = {0xc0,0x14,0x3d,0x63,0x9e,0xca};                             // MAC address stored in PS3 controller.
const unsigned int ENA = 15;                                                      // Choosing this pin to generate PWM on wheel 1.
const unsigned int IN1 = 02;                                                      // Choosing this pin to set the turning sense on wheel 1.
const unsigned int IN2 = 04;                                                      // Choosing this pin to set the turning sense on wheel 1.
const unsigned int ENB = 05;                                                      // Choosing this pin to generate PWM on wheel 2.
const unsigned int IN3 = 19;                                                      // Choosing this pin to set the turning sense on wheel 2.
const unsigned int IN4 = 18;                                                      // Choosing this pin to set the turning sense on wheel 2.
const unsigned int ENC = 21;                                                      // Choosing this pin to generate PWM on wheel 3.
const unsigned int IN5 = 22;                                                      // Choosing this pin to set the turning sense on wheel 3.
const unsigned int IN6 = 23;                                                      // Choosing this pin to set the turning sense on wheel 3.
const unsigned int Q1A = 13;                                                      // Choosing this pin for encoder's channel A on wheel 1.
const unsigned int Q1B = 12;                                                      // Choosing this pin for encoder's channel B on wheel 1.
const unsigned int Q2A = 14;                                                      // Choosing this pin for encoder's channel A on wheel 2.
const unsigned int Q2B = 27;                                                      // Choosing this pin for encoder's channel B on wheel 2.
const unsigned int Q3A = 26;                                                      // Choosing this pin for encoder's channel A on wheel 3.
const unsigned int Q3B = 25;                                                      // Choosing this pin for encoder's channel B on wheel 3.
const unsigned int RXD2 = 16;                                                     // Choosing this pin as UART 2 receiving data.
const unsigned int TXD2 = 17;                                                     // Choosing this pin as UART 2 transmitting data.
const unsigned int bufferSize_str = 64;                                           // buffer length for characters string.
int Ibuff = 0x00;                                                                 // Index: next char in character-chain.
int direction_1 = 0;                                                              // Variable to save the turning direction of wheel 1.
int direction_2 = 0;                                                              // Variable to save the turning direction of wheel 2.
int direction_3 = 0;                                                              // Variable to save the turning direction of wheel 3.
int flagcommand;                                                                  // Available command flag.
unsigned int counterflag_1 = 0;                                                   // Defined flag for encoder of wheel 1.
unsigned int counterflag_2 = 0;                                                   // Defined flag for encoder of wheel 2.
unsigned int counterflag_3 = 0;                                                   // Defined flag for encoder of wheel 3.
int long counter_1 = 0;                                                           // Counter of signal A status on encoder of wheel 1.
int long counter_2 = 0;                                                           // Counter of signal B status on encoder of wheel 1.
int long counter_3 = 0;                                                           // Counter of signal A status on encoder of wheel 2.
int long counter_4 = 0;                                                           // Counter of signal B status on encoder of wheel 2.
int long counter_5 = 0;                                                           // Counter of signal A status on encoder of wheel 3.
int long counter_6 = 0;                                                           // Counter of signal B status on encoder of wheel 3.
unsigned int long pulsetime_1 = 0;                                                // Variable to save pulse time a for encoder of wheel 1.
unsigned int long pulsetime_2 = 0;                                                // Variable to save pulse time a for encoder of wheel 2.
unsigned int long pulsetime_3 = 0;                                                // Variable to save pulse time a for encoder of wheel 3.
char datoO[8], datoP[8], datoQ[8];                                                // Character vectors.
char PS3_analog_data[64];                                                         // Char variable array to save instantaneous button manipulation of PS3 controller.
char ControlSignals[64];                                                          // Variable to save all the control signal values.
char angular_velocities[32];                                                      // Variable to save the angular velocities of robot wheels.
char chain[bufferSize_str];                                                       // Reception buffer.
char character;                                                                   // Variable to save received character by UART module.
float Control_1;                                                                  // Variable to save received control signal value from UART module (u_1).
float Control_2;                                                                  // Variable to save received control signal value from UART module (u_2).
float Control_3;                                                                  // Variable to save received control signal value from UART module (u_3).
float r1_Control_1;                                                               // Variable to save control signal value of OMR 1 (u_1 from PS3 Controller).
float r1_Control_2;                                                               // Variable to save control signal value of OMR 1 (u_2 from PS3 Controller).
float r1_Control_3;                                                               // Variable to save control signal value of OMR 1 (u_3 from PS3 Controller).
volatile double ang_vel_1 = 0.0;                                                  // Angular velocity in rad/s of wheel 1.
volatile double ang_vel_2 = 0.0;                                                  // Angular velocity in rad/s of wheel 2.
volatile double ang_vel_3 = 0.0;                                                  // Angular velocity in rad/s of wheel 3.
volatile uint32_t iterations = 0;                                                 // Iterations counter in the execution of this program.
hw_timer_t *Timer2_Cfg = NULL;                                                    // Pointer declaration for timer 2 execution.
hw_timer_t *Timer3_Cfg = NULL;                                                    // Pointer declaration for timer 3 execution.
// Arranging a constant matrix W1, that serves to find PWM actuation signals for each wheel of involved vehicles in the OMR formation:
float w11 = 100.0f/r_1;                                                           // Precompute operation 1.
float w12 = w11/2.0f;                                                             // Precompute operation 2.
float w13 = w11*l_1;                                                              // Precompute operation 3.
float w14 = w12*sqrt(3.0f);                                                       // Precompute operation 4.
float w15 = 100.0f/r_2;                                                           // Precompute operation 5.
float w16 = w15/2.0f;                                                             // Precompute operation 6.
float w17 = w15*l_2;                                                              // Precompute operation 7.
float w18 = w16*sqrt(3.0f);                                                       // Precompute operation 8.
float W1[6][6] = {
  {-w12,  w14,  w13, 0.0f, 0.0f, 0.0f},
  {-w12, -w14,  w13, 0.0f, 0.0f, 0.0f},
  { w11, 0.0f,  w13, 0.0f, 0.0f, 0.0f},
  {0.0f, 0.0f, 0.0f, -w16,  w18,  w17},
  {0.0f, 0.0f, 0.0f, -w16, -w18,  w17},
  {0.0f, 0.0f, 0.0f,  w15, 0.0f,  w17}
};
//-----------------------------------------------------------------------------------
// Putting function declarations here:
void add_2_cbuff(char c);                                                         // Declaration of add_2_cbuff function.
void init_cbuff(void);                                                            // Declaration of init_cbuff function.
void string2float();                                                              // Declaration of string2float function.
void MovingWheel_1(float value);                                                  // Declaration of MovingWheel_1 function.
void MovingWheel_2(float value);                                                  // Declaration of MovingWheel_2 function.
void MovingWheel_3(float value);                                                  // Declaration of MovingWheel_3 function.
void Timer2_Setup();                                                              // Declaration of Timer2_Setup function.
void Timer3_Setup();                                                              // Declaration of Timer3_Setup function.
void IRAM_ATTR Q1A_Interrupt();                                                   // Declaration of Q1A_Interrupt function.
void IRAM_ATTR Q1B_Interrupt();                                                   // Declaration of Q1B_Interrupt function.
void IRAM_ATTR Q2A_Interrupt();                                                   // Declaration of Q2A_Interrupt function.
void IRAM_ATTR Q2B_Interrupt();                                                   // Declaration of Q2B_Interrupt function.
void IRAM_ATTR Q3A_Interrupt();                                                   // Declaration of Q3A_Interrupt function.
void IRAM_ATTR Q3B_Interrupt();                                                   // Declaration of Q3B_Interrupt function.
void IRAM_ATTR Timer2_ISR();                                                      // Declaration of Timer2_ISR function.
void IRAM_ATTR Timer3_ISR();                                                      // Declaration of Timer3_ISR function.
//-----------------------------------------------------------------------------------
// Timer 2 interrupt at 10 Hz:
void IRAM_ATTR Timer2_ISR(){
  // Packing and streaming the angular velocities of this OMR:
  sprintf(angular_velocities,":1,%1.3f,%1.3f,%1.3f;",ang_vel_1,ang_vel_2,ang_vel_3);
  if(!Ps3.isConnected()){
    Serial.println(angular_velocities);                                           // Print angular velocities by serial peripheral.
  }
}
//-----------------------------------------------------------------------------------
// Timer 3 interrupt at 10 Hz:
void IRAM_ATTR Timer3_ISR(){
  if(direction_1 == 0){
    ang_vel_1 = 0.0;                                                              // Setting angular velocity of robot wheel 1 to zero.
  }
  if(direction_2 == 0){
    ang_vel_2 = 0.0;                                                              // Setting angular velocity of robot wheel 2 to zero.
  }
  if(direction_3 == 0){
    ang_vel_3 = 0.0;                                                              // Setting angular velocity of robot wheel 3 to zero.
  }
  counter_1 = 0; counter_2 = 0; counter_3 = 0;                                    // Set counters to zero.
  counter_4 = 0; counter_5 = 0; counter_6 = 0;                                    // Set counters to zero.
  pulsetime_1 = 0; pulsetime_2 = 0; pulsetime_3 = 0;                              // Pulse time variables to zero.
  direction_1 = 0; direction_2 = 0; direction_3 = 0;                              // Turning direction of robot wheels to zero.
  counterflag_1 = 0; counterflag_2 = 0; counterflag_3 = 0;                        // Turning the counter flags to zero.
}
//-----------------------------------------------------------------------------------
void setup(){
  //---------------------------------------------------------------------------------
  // Configuring digital inputs and outputs:
  pinMode(ENA,OUTPUT);                                                            // Configuring pin 15 as output.
  pinMode(IN1,OUTPUT);                                                            // Configuring pin 02 as output.
  pinMode(IN2,OUTPUT);                                                            // Configuring pin 04 as output.
  pinMode(ENB,OUTPUT);                                                            // Configuring pin 05 as output.
  pinMode(IN3,OUTPUT);                                                            // Configuring pin 19 as output.
  pinMode(IN4,OUTPUT);                                                            // Configuring pin 18 as output.
  pinMode(ENC,OUTPUT);                                                            // Configuring pin 21 as output.
  pinMode(IN5,OUTPUT);                                                            // Configuring pin 22 as output.
  pinMode(IN6,OUTPUT);                                                            // Configuring pin 23 as output.
  pinMode(Q1A,INPUT);                                                             // Configuring pin 13 as input.
  pinMode(Q1B,INPUT);                                                             // Configuring pin 12 as input.
  pinMode(Q2A,INPUT);                                                             // Configuring pin 14 as input.
  pinMode(Q2B,INPUT);                                                             // Configuring pin 27 as input.
  pinMode(Q3A,INPUT);                                                             // Configuring pin 26 as input.
  pinMode(Q3B,INPUT);                                                             // Configuring pin 25 as input.
  //---------------------------------------------------------------------------------
  // Configuring LEDC PWMs:
  ledcAttach(ENA,PWMs_Frequency,PWMs_Resolution);                                 // Setting pin ENA = 15 as PWM output signal with desired frequency and resolution of this PWM signal.
  ledcAttach(ENB,PWMs_Frequency,PWMs_Resolution);                                 // Setting pin ENB = 16 as PWM output signal with desired frequency and resolution of this PWM signal.
  ledcAttach(ENC,PWMs_Frequency,PWMs_Resolution);                                 // Setting pin ENC = 18 as PWM output signal with desired frequency and resolution of this PWM signal.
  //---------------------------------------------------------------------------------
  // Enabling UART communications:
  // Initialize serial monitor (UART 0):
  Serial.begin(Baud_Rate);                                                        // Open a serial connection (UART 0).
  // Initialize second serial port (UART 2):
  MySerial.setRxBufferSize(bufferSize_uart);                                      // Standard Arduino has 64 bytes.
                                                                                  // ESP32 has 256 bytes.
                                                                                  // Call must come before begin().
  MySerial.begin(Baud_Rate,SERIAL_8N1,RXD2,TXD2);                                 // Open a serial connection (UART 2).
  init_cbuff();                                                                   // Clear buffer.
  //---------------------------------------------------------------------------------
  // Configuring PS3 controller:
  ps3SetBluetoothMacAddress(new_mac);                                             // Setting MAC address for PS3 controller.
  Ps3.begin("c0:14:3d:63:9e:ca");                                                 // Enable PS3 controller communication.
  Serial.println("PS3 Controller is --Ready.");
  //---------------------------------------------------------------------------------
  // Activate interrupts for counting pulses on attached encoders on robot's wheels:
  attachInterrupt(digitalPinToInterrupt(Q1A),Q1A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q1B),Q1B_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2A),Q2A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2B),Q2B_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3A),Q3A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3B),Q3B_Interrupt,CHANGE);
  //---------------------------------------------------------------------------------
  // Enable Timer 2 interrupt at 10 Hz:
  Timer2_Setup();                                                                 // Call Timer2_setup function.
  //---------------------------------------------------------------------------------
  // Enable Timer 3 interrupt at 10 Hz:
  Timer3_Setup();                                                                 // Call TC3_setup function.
  //---------------------------------------------------------------------------------
}
//-----------------------------------------------------------------------------------
// Setting Timer 2 and configuring its interruption function (at 10 Hz):
void Timer2_Setup(){
  Timer2_Cfg = timerBegin(10);                                                    // Set timer frequency to 10 Hz.
  timerAttachInterrupt(Timer2_Cfg,&Timer2_ISR);                                   // Attaches the Timer 3 interrupt event with a desired ISR_Handler callback function (Timer3_ISR), that will be executed periodically.
  timerAlarm(Timer2_Cfg,100000,true,0);                                           // Set alarm to call Timer3_ISR function every 0.1 seconds (value in microseconds). Repeat the alarm (third parameter) with unlimited count = 0 (fourth parameter).
}
//-----------------------------------------------------------------------------------
// Setting Timer 3 and configuring its interruption function (at 10 Hz):
void Timer3_Setup(){
  Timer3_Cfg = timerBegin(10);                                                    // Set timer frequency to 10 Hz.
  timerAttachInterrupt(Timer3_Cfg,&Timer3_ISR);                                   // Attaches the Timer 3 interrupt event with a desired ISR_Handler callback function (Timer3_ISR), that will be executed periodically.
  timerAlarm(Timer3_Cfg,100000,true,0);                                           // Set alarm to call Timer3_ISR function every 0.1 seconds (value in microseconds). Repeat the alarm (third parameter) with unlimited count = 0 (fourth parameter).
}
//-----------------------------------------------------------------------------------
// initializing buffer:
void init_cbuff(void){
  int i;
  flagcommand = 0;                                                                // Reset flagcommand value.
  for(i = 0; i < bufferSize_str; i++){                                            // Bucle that set to 0 all.
    chain[i] = 0x00;                                                              // Characters in buffer.
  }
  Ibuff = 0x00;                                                                   // Initialize the index.
}
//-----------------------------------------------------------------------------------
// Adding characters to buffer:
void add_2_cbuff(char c){
  switch(c){
    case 0x0D:                                                                    // Line Feed 1 -> Enable flag.
    flagcommand = 1;
    break;
    case 0x0A:                                                                    // Line Feed 2 -> Enable flag.
    flagcommand = 1;
    break;
    case 0x08:                                                                    // Del -> Delete last character from buffer.
    if(Ibuff > 0) chain[--Ibuff] = 0x00;
    break;
    default:                                                                      // Add received character to buffer.
    chain[Ibuff++] = c;
  }
}
//-----------------------------------------------------------------------------------
// Changing character string to floating numbers:
void string2float(){
  int i = 0; int j = 0; int r = 0; int s = 0; int t = 0;
  // separating received data from UART module:
  for(i = 0; i < Ibuff; i++){
    if(chain[i] == ','){                                                          // Detecting ',' within data chain.
      j++;
    }
    else if(chain[i] != ',' && j == 4){
      datoO[r++] = chain[i];                                                      // Store value string to dato0.
    }
    else if(chain[i] != ',' && j == 5){
      datoP[s++] = chain[i];                                                      // Store value string to datoP.
    }
    else if(chain[i] != ';' && j == 6){
      datoQ[t++] = chain[i];                                                      // Store value string to datoQ. 
    }
    else{
      delayMicroseconds(1);                                                       // 1 microsecond delay.
    }
  }
// Saving the orientation matrix values to a floating number matrix.
Control_1 = atof(datoO);                                                          // Getting control signal value for moving wheel 1 (-100 to 100).
Control_2 = atof(datoP);                                                          // Getting control signal value for moving wheel 2 (-100 to 100).
Control_3 = atof(datoQ);                                                          // Getting control signal value for moving wheel 3 (-100 to 100).
}
//-----------------------------------------------------------------------------------
// Motion generation for wheel 1 (according to control signal):
void MovingWheel_1(float value){
  int PWMdc;
  PWMdc = abs(value*pow(2,PWMs_Resolution))/d_th21_max;                           // Duty cycle value in Ticks.
  if(value < 0){
    digitalWrite(IN1,HIGH);
    digitalWrite(IN2,LOW);
  }
  else if(value == 0){
    digitalWrite(IN1,LOW);
    digitalWrite(IN2,LOW);
  }
  else{
    digitalWrite(IN1,LOW);
    digitalWrite(IN2,HIGH);
  }
  ledcWrite(PWM_Channel_0,PWMdc);                                                 // Setting duty cycle value in PWM of wheel 1 (1 Khz).
}
//-----------------------------------------------------------------------------------
// Motion generation for wheel 2 (according to control signal):
void MovingWheel_2(float value){
  int PWMdc;
  PWMdc = abs(value*pow(2,PWMs_Resolution))/d_th22_max;                           // Duty cycle value in Ticks.
  if(value < 0){
    digitalWrite(IN3,HIGH);
    digitalWrite(IN4,LOW);
  }
  else if(value == 0){
    digitalWrite(IN3,LOW);
    digitalWrite(IN4,LOW);
  }
  else{
    digitalWrite(IN3,LOW);
    digitalWrite(IN4,HIGH);
  }
  ledcWrite(PWM_Channel_1,PWMdc);                                                 // Setting duty cycle value in PWM of wheel 2 (1 Khz).
}
//-----------------------------------------------------------------------------------
// Motion generation for wheel 3 (according to control signal):
void MovingWheel_3(float value){
  int PWMdc;
  PWMdc = abs(value*pow(2,PWMs_Resolution))/d_th23_max;                           // Duty cycle value in Ticks.
  if(value < 0){
    digitalWrite(IN5,HIGH);
    digitalWrite(IN6,LOW);
  }
  else if(value == 0){
    digitalWrite(IN5,LOW);
    digitalWrite(IN6,LOW);
  }
  else{
    digitalWrite(IN5,LOW);
    digitalWrite(IN6,HIGH);
  }
  ledcWrite(PWM_Channel_2,PWMdc);                                                 // Setting duty cycle value in PWM of wheel 3 (1 Khz).
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder attached on wheel 1:
void IRAM_ATTR Q1A_Interrupt(){
  if(digitalRead(Q1A) == HIGH && digitalRead(Q1B) == HIGH){
    counter_1--;
    direction_1 = -1;                                                             // Wheel 1 is moving in counterclockwise direction.
    counterflag_1 = 1;
    pulsetime_1 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
  else if(digitalRead(Q1A) == LOW && digitalRead(Q1B) == LOW){
    counter_1--;
    direction_1 = -1;                                                             // Wheel 1 is moving in counterclockwise direction.
  }
  else{
    counter_1++;
    direction_1 = 1;                                                              // Wheel 1 is moving in clockwise direction.
    if(counterflag_1 == 1){
      counterflag_1 = 0;
      pulsetime_1 = timerRead(Timer3_Cfg) - pulsetime_1;                          // Read the Compare Timer 3 register and differentiate to previous reading.
      ang_vel_1 = (direction_1*APB_CLK*2.0*M_PI)/(2.0*22.0*n_2*pulsetime_1);      // Computing angular velocity of wheel 1, in [rad/s] ((direction_1*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_1)).
    }
  }
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder attached on wheel 1:
void IRAM_ATTR Q1B_Interrupt(){
  if(digitalRead(Q1B) == HIGH && digitalRead(Q1A) == HIGH){
    counter_2++;
    direction_1 = 1;                                                              // Wheel 1 is moving in clockwise direction.
    counterflag_1 = 1;
    pulsetime_1 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
  else if(digitalRead(Q1B) == LOW && digitalRead(Q1A) == LOW){
    counter_2++;
    direction_1 = 1;                                                              // Wheel 1 is moving in clockwise direction.
  }
  else{
    counter_2--;
    direction_1 = -1;                                                             // Wheel 1 is moving in counterclockwise direction.
    if(counterflag_1 == 1){
      counterflag_1 = 0;
      pulsetime_1 = timerRead(Timer3_Cfg) - pulsetime_1;                          // Read the Compare Timer 3 register and differentiate to previous reading.
      ang_vel_1 = (direction_1*APB_CLK*2.0*M_PI)/(2.0*22.0*n_2*pulsetime_1);      // Computing angular velocity of wheel 1, in [rad/s] ((direction_1*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_1)).
    }
  }
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder attached on wheel 2:
void IRAM_ATTR Q2A_Interrupt(){
  if(digitalRead(Q2A) == HIGH && digitalRead(Q2B) == HIGH){
    counter_3--;
    direction_2 = -1;                                                             // Wheel 2 is moving in counterclockwise direction.
    counterflag_2 = 1;
    pulsetime_2 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
  else if(digitalRead(Q2A) == LOW && digitalRead(Q2B) == LOW){
    counter_3--;
    direction_2 = -1;                                                             // Wheel 2 is moving in counterclockwise direction.
  }
  else{
    counter_3++;
    direction_2 = 1;                                                              // Wheel 2 is moving in clockwise direction.
    if(counterflag_2 == 1){
      counterflag_2 = 0;
      pulsetime_2 = timerRead(Timer3_Cfg) - pulsetime_2;                          // Read the Compare Timer 3 register and differentiate to previous reading.
      ang_vel_2 = (direction_2*APB_CLK*2.0*M_PI)/(2.0*22.0*n_2*pulsetime_2);      // Computing angular velocity of wheel 2, in [rad/s] ((direction_2*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_2)).
    }
  }
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder attached on wheel 2:
void IRAM_ATTR Q2B_Interrupt(){
  if(digitalRead(Q2B) == HIGH && digitalRead(Q2A) == HIGH){
    counter_4++;
    direction_2 = 1;                                                              // Wheel 2 is moving in clockwise direction.
    counterflag_2 = 1;
    pulsetime_2 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
  else if(digitalRead(Q2B) == LOW && digitalRead(Q2A) == LOW){
    counter_4++;
    direction_2 = 1;                                                              // Wheel 2 is moving in clockwise direction.
  }
  else{
    counter_4--;
    direction_2 = -1;                                                             // Wheel 2 is moving in counterclockwise direction.
    if(counterflag_2 == 1){
      counterflag_2 = 0;
      pulsetime_2 = timerRead(Timer3_Cfg) - pulsetime_2;                          // Read the Compare Timer 3 register and differentiate to previous reading.
      ang_vel_2 = (direction_2*APB_CLK*2.0*M_PI)/(2.0*22.0*n_2*pulsetime_2);      // Computing angular velocity of wheel 2, in [rad/s] ((direction_2*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_2)).
    }
  }
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder attached on wheel 3:
void IRAM_ATTR Q3A_Interrupt(){
  if(digitalRead(Q3A) == HIGH && digitalRead(Q3B) == HIGH){
    counter_5--;
    direction_3 = -1;                                                             // Wheel 3 is moving in counterclockwise direction.
    counterflag_3 = 1;
    pulsetime_3 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
  else if(digitalRead(Q3A) == LOW && digitalRead(Q3B) == LOW){
    counter_5--;
    direction_3 = -1;                                                             // Wheel 3 is moving in counterclockwise direction.
  }
  else{
    counter_5++;
    direction_3 = 1;                                                              // Wheel 3 is moving in clockwise direction.
    if(counterflag_3 == 1){
      counterflag_3 = 0;
      pulsetime_3 = timerRead(Timer3_Cfg) - pulsetime_3;                          // Read the Compare Timer 3 register and differentiate to previous reading.
      ang_vel_3 = (direction_3*APB_CLK*2.0*M_PI)/(2.0*22.0*n_2*pulsetime_3);      // Computing angular velocity of wheel 3, in [rad/s] ((direction_3*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_3)).
    }
  }
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder attached on wheel 3:
void IRAM_ATTR Q3B_Interrupt(){
  if(digitalRead(Q3B) == HIGH && digitalRead(Q3A) == HIGH){
    counter_6++;
    direction_3 = 1;                                                              // Wheel 3 is moving in clockwise direction.
    counterflag_3 = 1;
    pulsetime_3 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
  else if(digitalRead(Q3B) == LOW && digitalRead(Q3A) == LOW){
    counter_6++;
    direction_3 = 1;                                                              // Wheel 3 is moving in clockwise direction.
  }
  else{
    counter_6--;
    direction_3 = -1;                                                             // Wheel 3 is moving in counterclockwise direction.
    if(counterflag_3 == 1){
      counterflag_3 = 0;
      pulsetime_3 = timerRead(Timer3_Cfg) - pulsetime_3;                          // Read the Compare Timer 3 register and differentiate to previous reading.
      ang_vel_3 = (direction_3*APB_CLK*2.0*M_PI)/(2.0*22.0*n_2*pulsetime_3);      // Computing angular velocity of wheel 3, in [rad/s] ((direction_3*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_3)).
    }
  }
}
//-----------------------------------------------------------------------------------
void loop(){
  // Putting the main code here, to run repeatedly:
  int i, j;                                                                       // Declaration of i and j as integer variables.
  if(Ps3.isConnected() || MySerial.available() > 0){
    while(MySerial.available() > 0){
      character = 0x00;                                                           // Defining character.
      character = MySerial.read();                                                // Last received character.
      add_2_cbuff(character);                                                     // Adding character to data buffer assigned to UART 2 module.
    }
    // Taking values from UART 2 module:
    if(flagcommand == 1 &&  && !Ps3.isConnected()){
      string2float();                                                             // Call string2float() function.
      init_cbuff();                                                               // Clear buffer.
      MovingWheel_1(Control_1*d_th21_max/100.0f);                                 // Calling function that moves wheel 1 at certain desired angular velocity.
      MovingWheel_2(Control_2*d_th22_max/100.0f);                                 // Calling function that moves wheel 2 at certain desired angular velocity.
      MovingWheel_3(Control_3*d_th23_max/100.0f);                                 // Calling function that moves wheel 3 at certain desired angular velocity.
    }
    if(Ps3.isConnected()){
      // Arranging velocity command data obtained from PS3 controller, in [mm/s] and [rad/s] units:
      float ps3_u_k[6] = {                                         -(float)(Ps3.data.analog.stick.rx)*V1_x_max/128.0f,
                                                                    (float)(Ps3.data.analog.stick.ry)*V1_y_max/128.0f,
                          ((float)(Ps3.data.analog.button.r1) - (float)(Ps3.data.analog.button.r2))*d_phi1_max/255.0f,
                                                                   -(float)(Ps3.data.analog.stick.lx)*V2_x_max/128.0f,
                                                                    (float)(Ps3.data.analog.stick.ly)*V2_y_max/128.0f,
                          ((float)(Ps3.data.analog.button.l1) - (float)(Ps3.data.analog.button.l2))*d_phi2_max/255.0f};
      float ps3_v_k[6];                                                           // Declaration of a vector field required to compute the commanding angular velocities of OMR wheels.
      for(i = 0; i < 6; i++){
        ps3_v_k[i] = 0.0f;                                                        // Clear signals within vector ps3_v(k).
        for(j = 0; j < 6; j++){
          ps3_v_k[i] += W1[i][j]*ps3_u_k[j];                                      // Computing the values of declared vector field. 
        }
        ps3_v_k[i] = roundToThreeDecimals(ps3_v_k[i]);
      }
      r1_Control_1 = saturation(ps3_v_k[0]/d_th11_max,-100.0f,100.0f);            // Computing the resulting PWM control signal for wheel 1 of OMR 1.
      r1_Control_2 = saturation(ps3_v_k[1]/d_th12_max,-100.0f,100.0f);            // Computing the resulting PWM control signal for wheel 2 of OMR 1.
      r1_Control_3 = saturation(ps3_v_k[2]/d_th13_max,-100.0f,100.0f);            // Computing the resulting PWM control signal for wheel 3 of OMR 1.
      //--------------------------------------
      Control_1 = saturation(ps3_v_k[3]/d_th21_max,-100.0f,100.0f);               // Computing the resulting PWM control signal for wheel 1 of OMR 2.
      Control_2 = saturation(ps3_v_k[4]/d_th22_max,-100.0f,100.0f);               // Computing the resulting PWM control signal for wheel 2 of OMR 2.
      Control_3 = saturation(ps3_v_k[5]/d_th23_max,-100.0f,100.0f);               // Computing the resulting PWM control signal for wheel 3 of OMR 2.
      MovingWheel_1(Control_1*d_th21_max/100.0f);                                 // Calling function that moves wheel 1 at certain desired angular velocity.
      MovingWheel_2(Control_2*d_th22_max/100.0f);                                 // Calling function that moves wheel 2 at certain desired angular velocity.
      MovingWheel_3(Control_3*d_th23_max/100.0f);                                 // Calling function that moves wheel 3 at certain desired angular velocity.
      //--------------------------------------
      // Storing analog data from PS3 controller:
      sprintf(PS3_analog_data,"%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f;",ps3_v_k[0],ps3_v_k[1],ps3_v_k[2],ps3_v_k[3],ps3_v_k[4],ps3_v_k[5]);
      //--------------------------------------
      // Arranging and sending control signals:
      sprintf(ControlSignals,":0,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f;",r1_Control_1,r1_Control_2,r1_Control_3,Control_1,Control_2,Control_3);
      MySerial.println(ControlSignals);
    }
  }
  delay(50);                                                                      // 50 milliseconds delay.
}
