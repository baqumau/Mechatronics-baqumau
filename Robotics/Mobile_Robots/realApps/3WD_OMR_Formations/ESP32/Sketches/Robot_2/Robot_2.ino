/*  Embedded driver on OMR No. 1 (Black robot).
 Working at 240 Mhz (Bluetooth and WiFi);
 Working at 80 Mhz (Timers). */
//-----------------------------------------------------------------------------------
// Defining mathematical and configuration values:
#define _USE_MATH_DEFINES                                                         // Mathematical definitions.
#define PWMs_Freq 1000                                                            // Desired frequency for PWM signals.
#define PWMs_Res 16                                                               // Desired resolution for PWM signals.
#define PWM_Channel_0 0                                                           // Defining channel 0 for PWM signal.
#define PWM_Channel_1 1                                                           // Defining channel 1 for PWM signal.
#define PWM_Channel_2 2                                                           // Defining channel 2 for PWM signal.
// Including libraries to the program:
#include <Ps3Controller.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
#include <arduino.h>
#include <HardwareSerial.h>
#include "src/baqumau/3WD_OMRs_Controllers.h"
//-----------------------------------------------------------------------------------
// Defining the used variables in this sketch:
char PS3_analog_data[100];                                                        // Char variable array to save instantaneous button manipulation of PS3 controller.
char OMR1_PWMs[30];                                                               // Char variable array to store instantaneous PWM signal values for OMR 1.
uint8_t new_mac[8] = {0xc0,0x14,0x3d,0x63,0x9e,0xca};                             // MAC address stored in PS3 controller.
const int ENA = 15;                                                               // Choosing this pin to generate PWM on wheel 1.
const int IN1 = 02;                                                               // Choosing this pin to set the turning sense on wheel 1.
const int IN2 = 04;                                                               // Choosing this pin to set the turning sense on wheel 1.
const int ENB = 05;                                                               // Choosing this pin to generate PWM on wheel 2.
const int IN3 = 19;                                                               // Choosing this pin to set the turning sense on wheel 2.
const int IN4 = 18;                                                               // Choosing this pin to set the turning sense on wheel 2.
const int ENC = 21;                                                               // Choosing this pin to generate PWM on wheel 3.
const int IN5 = 22;                                                               // Choosing this pin to set the turning sense on wheel 3.
const int IN6 = 23;                                                               // Choosing this pin to set the turning sense on wheel 3.
const int Q1A = 13;                                                               // Choosing this pin for encoder's channel A on wheel 1.
const int Q1B = 12;                                                               // Choosing this pin for encoder's channel B on wheel 1.
const int Q2A = 14;                                                               // Choosing this pin for encoder's channel A on wheel 2.
const int Q2B = 27;                                                               // Choosing this pin for encoder's channel B on wheel 2.
const int Q3A = 26;                                                               // Choosing this pin for encoder's channel A on wheel 3.
const int Q3B = 25;                                                               // Choosing this pin for encoder's channel B on wheel 3.
const int RXD2 = 16;                                                              // Choosing this pin as UART 2 receiving data.
const int TXD2 = 17;                                                              // Choosing this pin as UART 2 transmitting data.
char datoO[10], datoP[10], datoQ[10];                                             // Character vectors.
int const buffer = 100;                                                           // buffer length.
int Ibuff = 0x00;                                                                 // Index: next char in cbuff.
char chain[buffer];                                                               // Reception buffer.
int flagcommand;                                                                  // Available command flag.
char caracter;                                                                    // Variable to save received character by UART module.
float Control_1;                                                                  // Variable to save received control signal value from UART module (u_1).
float Control_2;                                                                  // Variable to save received control signal value from UART module (u_2).
float Control_3;                                                                  // Variable to save received control signal value from UART module (u_3).
char ControlSignals[128];                                                         // Variable to save all the control signal values.
int long counter_1 = 0;                                                           // Counter of signal A status on encoder of wheel 1.
int long counter_2 = 0;                                                           // Counter of signal B status on encoder of wheel 1.
int long counter_3 = 0;                                                           // Counter of signal A status on encoder of wheel 2.
int long counter_4 = 0;                                                           // Counter of signal B status on encoder of wheel 2.
int long counter_5 = 0;                                                           // Counter of signal A status on encoder of wheel 3.
int long counter_6 = 0;                                                           // Counter of signal B status on encoder of wheel 3.
unsigned int counterflag_1 = 0;                                                   // Defined flag for encoder of wheel 1.
unsigned int counterflag_2 = 0;                                                   // Defined flag for encoder of wheel 2.
unsigned int counterflag_3 = 0;                                                   // Defined flag for encoder of wheel 3.
unsigned int long pulsetime_1 = 0;                                                // Variable to save pulse time a for encoder of wheel 1.
unsigned int long pulsetime_2 = 0;                                                // Variable to save pulse time a for encoder of wheel 2.
unsigned int long pulsetime_3 = 0;                                                // Variable to save pulse time a for encoder of wheel 3.
int direction_1 = 0;                                                              // Variable to save the turning direction of wheel 1.
int direction_2 = 0;                                                              // Variable to save the turning direction of wheel 2.
int direction_3 = 0;                                                              // Variable to save the turning direction of wheel 3.
float ang_vel_1 = 0.0;                                                            // Angular velocity in rad/s of wheel 1.
float ang_vel_2 = 0.0;                                                            // Angular velocity in rad/s of wheel 2.
float ang_vel_3 = 0.0;                                                            // Angular velocity in rad/s of wheel 3.
char angular_velocities[64];                                                      // Variable to save the angular displacements of robot wheels.
float PWM1_OMR_1;                                                                 // Equivalent PWM signal 1 for OMR 1 (wheel 1).
float PWM2_OMR_1;                                                                 // Equivalent PWM signal 2 for OMR 1 (wheel 2).
float PWM3_OMR_1;                                                                 // Equivalent PWM signal 3 for OMR 1 (wheel 3).
float W_1[3][3] = {                                                               // Multivariable matrix to transform the velocities space of OMR_1 movement.
  {-1/(2*r_1),  sqrt(3)/(2*r_1), l_1/r_1},
  {-1/(2*r_1), -sqrt(3)/(2*r_1), l_1/r_1},
  {     1/r_1,                0, l_1/r_1}
};
float W_2[3][3] = {                                                               // Multivariable matrix to transform the velocities space of OMR_2 movement.
  {-1/(2*r_2),  sqrt(3)/(2*r_2), l_2/r_2},
  {-1/(2*r_2), -sqrt(3)/(2*r_2), l_2/r_2},
  {     1/r_2,                0, l_2/r_2}
};
float d_1q_1[3], d_1q_2[3];                                                       // Variables for arranging the required linear velocity by the PS3 controller.
float d_th_1[3], d_th_2[3];                                                       // Variables for arranging the computed angular velocities ordered by PS3 controller.
hw_timer_t *Timer3_Cfg = NULL;                                                    // Pointer declaration for timer 3 execution.
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
  delay(500);                                                                     // .5 seconds delay.
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
  // Configuring PWMs:
  ledcAttach(ENA,PWMs_Freq,PWMs_Res);                                             // Setting pin ENA = 15 as PWM output signal with desired frequency and resolution of this PWM signal.
  ledcAttach(ENB,PWMs_Freq,PWMs_Res);                                             // Setting pin ENB = 16 as PWM output signal with desired frequency and resolution of this PWM signal.
  ledcAttach(ENC,PWMs_Freq,PWMs_Res);                                             // Setting pin ENC = 18 as PWM output signal with desired frequency and resolution of this PWM signal.
  //---------------------------------------------------------------------------------
  // Enabling UART communications:
  Serial.begin(250000);                                                           // Open a serial connection (UART 0).
  Serial2.begin(115200,SERIAL_8N1,RXD2,TXD2);                                     // Open a serial connection (UART 2).
  init_cbuff();                                                                   // Clear buffer.
  //---------------------------------------------------------------------------------
  // Configuring PS3 controller:
  ps3SetBluetoothMacAddress(new_mac);                                             // Setting MAC address for PS3 controller.
  Ps3.begin("c0:14:3d:63:9e:ca");                                                 // Enable PS3 controller communication.
  Serial.println("Ready.");
  //---------------------------------------------------------------------------------
  // Activate interrupts for counting pulses on attached encoders on robot's wheels:
  attachInterrupt(digitalPinToInterrupt(Q1A),Q1A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q1B),Q1B_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2A),Q2A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2B),Q2B_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3A),Q3A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3B),Q3B_Interrupt,CHANGE);
  //---------------------------------------------------------------------------------
  // Enable Timer 3 interrupt at 10 Hz:
  Timer3_Setup();                                                                 // Call TC3_setup function.
  //---------------------------------------------------------------------------------
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
  for(i = 0; i < buffer; i++){                                                    // Bucle that set to 0 all.
    chain[i] = 0x00;                                                              // characters in buffer.
  }
  Ibuff = 0x00;                                                                   // initialize the index.
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
    else if(chain[i] != ',' && j == 3){
      datoO[r++] = chain[i];                                                      // Store value string to dato0.
    }
    else if(chain[i] != ',' && j == 4){
      datoP[s++] = chain[i];                                                      // Store value string to datoP.
    }
    else if(chain[i] != ';' && j == 5){
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
  PWMdc = abs(value*65535.0)/d_th21_max;                                          // Duty cycle value in Ticks.
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
  PWMdc = abs(value*65535.0)/d_th22_max;                                          // Duty cycle value in Ticks.
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
  PWMdc = abs(value*65535.0)/d_th23_max;                                          // Duty cycle value in Ticks.
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
void Q1A_Interrupt(){
  if(digitalRead(Q1A) == HIGH && digitalRead(Q1B) == LOW){
    counter_1--;
    direction_1 = -1;                                                             // Wheel 1 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q1A) == LOW && digitalRead(Q1B) == HIGH){
    counter_1--;
    direction_1 = -1;                                                             // Wheel 1 is moving in counterclockwise direction.
  }
  else{
    counter_1++;
    direction_1 = 1;                                                              // Wheel 1 is moving in clockwise direction.
  }
  if(counterflag_1 == 1){
    counterflag_1 = 0;
    pulsetime_1 = timerRead(Timer3_Cfg) - pulsetime_1;                            // Read the Compare Timer 3 register and differentiate to previous reading.
    ang_vel_1 = (direction_1*40.0E6*2.0*M_PI)/(640.0*pulsetime_1);                // Computing angular velocity of wheel 1, in [rad/s] ((direction_1*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_1)).
  }
  else{
    counterflag_1 = 1;
    pulsetime_1 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder attached on wheel 1:
void Q1B_Interrupt(){
  if(digitalRead(Q1B) == HIGH && digitalRead(Q1A) == HIGH){
    counter_2--;
    direction_1 = -1;                                                             // Wheel 1 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q1B) == LOW && digitalRead(Q1A) == LOW){
    counter_2--;
    direction_1 = -1;                                                             // Wheel 1 is moving in counterclockwise direction.
  }
  else{
    counter_2++;
    direction_1 = 1;                                                              // Wheel 1 is moving in clockwise direction.
  }
  if(counterflag_1 == 1){
    counterflag_1 = 0;
    pulsetime_1 = timerRead(Timer3_Cfg) - pulsetime_1;                            // Read the Compare Timer 3 register and differentiate to previous reading.
    ang_vel_1 = (direction_1*40.0E6*2.0*M_PI)/(640.0*pulsetime_1);                // Computing angular velocity of wheel 1, in [rad/s] ((direction_1*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_1)).
  }
  else{
    counterflag_1 = 1;
    pulsetime_1 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder attached on wheel 2:
void Q2A_Interrupt(){
  if(digitalRead(Q2A) == HIGH && digitalRead(Q2B) == LOW){
    counter_3--;
    direction_2 = -1;                                                             // Wheel 2 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q2A) == LOW && digitalRead(Q2B) == HIGH){
    counter_3--;
    direction_2 = -1;                                                             // Wheel 2 is moving in counterclockwise direction.
  }
  else{
    counter_3++;
    direction_2 = 1;                                                              // Wheel 2 is moving in clockwise direction.
  }
  if(counterflag_2 == 1){
    counterflag_2 = 0;
    pulsetime_2 = timerRead(Timer3_Cfg) - pulsetime_2;                            // Read the Compare Timer 3 register and differentiate to previous reading.
    ang_vel_2 = (direction_1*40.0E6*2.0*M_PI)/(640.0*pulsetime_1);                // Computing angular velocity of wheel 2, in [rad/s] ((direction_2*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_2)).
  }
  else{
    counterflag_2 = 1;
    pulsetime_2 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder attached on wheel 2:
void Q2B_Interrupt(){
  if(digitalRead(Q2B) == HIGH && digitalRead(Q2A) == HIGH){
    counter_4--;
    direction_2 = -1;                                                             // Wheel 2 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q2B) == LOW && digitalRead(Q2A) == LOW){
    counter_4--;
    direction_2 = -1;                                                             // Wheel 2 is moving in counterclockwise direction.
  }
  else{
    counter_4++;
    direction_2 = 1;                                                              // Wheel 2 is moving in clockwise direction.
  }
  if(counterflag_2 == 1){
    counterflag_2 = 0;
    pulsetime_2 = timerRead(Timer3_Cfg) - pulsetime_2;                            // Read the Compare Timer 3 register and differentiate to previous reading.
    ang_vel_2 = (direction_1*40.0E6*2.0*M_PI)/(640.0*pulsetime_1);                // Computing angular velocity of wheel 2, in [rad/s] ((direction_2*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_2)).
  }
  else{
    counterflag_2 = 1;
    pulsetime_2 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder attached on wheel 3:
void Q3A_Interrupt(){
  if(digitalRead(Q3A) == HIGH && digitalRead(Q3B) == LOW){
    counter_5--;
    direction_3 = -1;                                                             // Wheel 3 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q3A) == LOW && digitalRead(Q3B) == HIGH){
    counter_5--;
    direction_3 = -1;                                                             // Wheel 3 is moving in counterclockwise direction.
  }
  else{
    counter_5++;
    direction_3 = 1;                                                              // Wheel 3 is moving in clockwise direction.
  }
  if(counterflag_3 == 1){
    counterflag_3 = 0;
    pulsetime_3 = timerRead(Timer3_Cfg) - pulsetime_3;                            // Read the Compare Timer 3 register and differentiate to previous reading.
    ang_vel_3 = (direction_3*40.0E6*2.0*M_PI)/(640.0*pulsetime_3);                // Computing angular velocity of wheel 3, in [rad/s] ((direction_3*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_3)).
  }
  else{
    counterflag_3 = 1;
    pulsetime_3 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder attached on wheel 3:
void Q3B_Interrupt(){
  if(digitalRead(Q3B) == HIGH && digitalRead(Q3A) == HIGH){
    counter_6--;
    direction_3 = -1;                                                             // Wheel 3 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q3B) == LOW && digitalRead(Q3A) == LOW){
    counter_6--;
    direction_3 = -1;                                                             // Wheel 3 is moving in counterclockwise direction.
  }
  else{
    counter_6++;
    direction_3 = 1;                                                              // Wheel 3 is moving in clockwise direction.
  }
  if(counterflag_3 == 1){
    counterflag_3 = 0;
    pulsetime_3 = timerRead(Timer3_Cfg) - pulsetime_3;                            // Read the Compare Timer 3 register and differentiate to previous reading.
    ang_vel_3 = (direction_3*40.0E6*2.0*M_PI)/(640.0*pulsetime_3);                // Computing angular velocity of wheel 3, in [rad/s] ((direction_3*APB_CLK*2*PI)/(PRS*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_3)).
  }
  else{
    counterflag_3 = 1;
    pulsetime_3 = timerRead(Timer3_Cfg);                                          // Read the Compare Timer 3 register.
  }
}
//-----------------------------------------------------------------------------------
void loop(){
  if(Ps3.isConnected()){
    // Creating a linear velocities vector from PS3 controller command (OMR 1):
    d_1q_1[0] = Ps3.data.analog.stick.lx*V1_x_max/128.0;                                          // Collecting data from analog Lx Stick of PS3 Controller.
    d_1q_1[1] = Ps3.data.analog.stick.ly*V1_y_max/128.0;                                          // Collecting data from analog Ly Stick of PS3 Controller.
    d_1q_1[2] = (Ps3.data.analog.button.l2 - Ps3.data.analog.button.l1)*d_phi1_max/255.0;         // Collecting data from both, analog L1 and L2 buttons of PS3 Controller.
    // Creating a linear velocities vector from PS3 controller command (OMR 2):
    d_1q_2[0] = Ps3.data.analog.stick.rx*V2_x_max/128.0;                                          // Collecting data from analog Rx Stick of PS3 Controller.
    d_1q_2[1] = Ps3.data.analog.stick.ry*V2_y_max/128.0;                                          // Collecting data from analog Ry Stick of PS3 Controller.
    d_1q_2[2] = (Ps3.data.analog.button.r2 - Ps3.data.analog.button.r1)*d_phi2_max/255.0;         // Collecting data from both, analog R1 and R2 buttons of PS3 Controller.
    // Computing required angular velocities in the wheels of OMR 1:
    for(int i = 0; i < 3; i++){
      for(int j = 0; j < 3; j++){
        d_th_1[i] = W_1[i][j]*d_1q_1[j];                                                          // Matrix multiplication.
      }
    }
    // Computing required angular velocities in the wheels of OMR 2:
    for(int i = 0; i < 3; i++){
      for(int j = 0; j < 3; j++){
        d_th_2[i] = W_2[i][j]*d_1q_2[j];                                                          // Matrix multiplication.
      }
    }
    MovingWheel_1(d_th_2[0]);                                                                     // Calling function that moves wheel 1 of OMR 2.
    MovingWheel_2(d_th_2[1]);                                                                     // Calling function that moves wheel 2 of OMR 2.
    MovingWheel_3(d_th_2[2]);                                                                     // Calling function that moves wheel 3 of OMR 2.
    //-----------------------------------------------------------------------------------
    sprintf(PS3_analog_data,"%i,%i,%i,%i,%i,%i,%i,%i;\n",Ps3.data.analog.stick.lx,Ps3.data.analog.stick.ly,Ps3.data.analog.button.l1,Ps3.data.analog.button.l2,Ps3.data.analog.stick.rx,Ps3.data.analog.stick.ry,Ps3.data.analog.button.r1,Ps3.data.analog.button.r2);
    // Sending PWM signal percentage to OMR 1:
    PWM1_OMR_1 = d_th_1[0]*100.0/d_th11_max;                                                      // Control signal value for moving wheel 1 of OMR 1 (-100 to 100).
    PWM2_OMR_1 = d_th_1[1]*100.0/d_th12_max;                                                      // Control signal value for moving wheel 2 of OMR 1 (-100 to 100).
    PWM3_OMR_1 = d_th_1[2]*100.0/d_th13_max;                                                      // Control signal value for moving wheel 3 of OMR 1 (-100 to 100).
    sprintf(OMR1_PWMs,"%1.4f,%1.4f,%1.4f;\n\r",Control_1,Control_2,Control_3);
    Serial2.print(OMR1_PWMs);                                                                     // Sending PWM signal values to OMR 1.
  }
  while(Serial.available() > 0){
    caracter = 0x00;                                                                              // Defining character.
    caracter = Serial.read();                                                                     // Last received character.
    add_2_cbuff(caracter);                                                                        // Add character to buffer.
  }
  if(flagcommand == 1){
    string2float();                                                                               // Call string2float() function. 
    init_cbuff();                                                                                 // Clear buffer.
    MovingWheel_1(Control_1*d_th21_max/100.0);                                                    // Calling function that moves wheel 1.
    MovingWheel_2(Control_2*d_th22_max/100.0);                                                    // Calling function that moves wheel 2.
    MovingWheel_3(Control_3*d_th23_max/100.0);                                                    // Calling function that moves wheel 3.
  }
  // sprintf(angular_velocities,":2,%1.4f,%1.4f,%1.4f;\n\r",ang_vel_1,ang_vel_2,ang_vel_3);
  // sprintf(angular_velocities,":2,%1.4f,%1.4f,%1.4f;\n\r",((float) d_th21_max),((float) d_th22_max),((float) d_th23_max));                                                            // Post the angular velocities of each wheel.
  sprintf(angular_velocities,":2,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f;\n\r",d_th11_max,d_th12_max,d_th13_max,d_th21_max,d_th22_max,d_th23_max);
  Serial.println(angular_velocities);
  delay(2);                                                                                       // 2 milliseconds delay.
}
