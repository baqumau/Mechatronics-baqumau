/*  Embedded driver on OMR No. 1 (Gray robot).
  Working at 84 Mhz... */
//-----------------------------------------------------------------------------------
// Defining mathematical values:
#define _USE_MATH_DEFINES
// Including libraries to the program:
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
//-----------------------------------------------------------------------------------
// Defining the used variables in this sketch:
#define NOP __asm__ __volatile__ ("nop\n\t")            // Nop instruction (asm).
const int ENA = 2;                                      // Choosing this pin to generate PWM on wheel 1.
const int IN1 = 22;                                     // Choosing this pin to set the turning sense on wheel 1.
const int IN2 = 23;                                     // Choosing this pin to set the turning sense on wheel 1.
const int ENB = 3;                                      // Choosing this pin to generate PWM on wheel 2.
const int IN3 = 24;                                     // Choosing this pin to set the turning sense on wheel 2.
const int IN4 = 25;                                     // Choosing this pin to set the turning sense on wheel 2.
const int ENC = 4;                                      // Choosing this pin to generate PWM on wheel 3.
const int IN5 = 26;                                     // Choosing this pin to set the turning sense on wheel 3.
const int IN6 = 27;                                     // Choosing this pin to set the turning sense on wheel 3.
const int Q1A = 48;                                     // Choosing this pin for encoder's channel A on wheel 1.
const int Q1B = 49;                                     // Choosing this pin for encoder's channel B on wheel 1.
const int Q2A = 50;                                     // Choosing this pin for encoder's channel A on wheel 2.
const int Q2B = 51;                                     // Choosing this pin for encoder's channel B on wheel 2.
const int Q3A = 52;                                     // Choosing this pin for encoder's channel A on wheel 3.
const int Q3B = 53;                                     // Choosing this pin for encoder's channel B on wheel 3.
char datoO[10], datoP[10], datoQ[10];                   // Character vectors.
int const buffer = 100;                                 // buffer length.
int Ibuff = 0x00;                                       // Index: next char in cbuff.
char chain[buffer];                                     // Reception buffer.
int flagcommand;                                        // Available command flag.
char caracter;                                          // Variable to save received character by UART module.
char cmd[buffer];                                       // Variable to save received data by UART module.
float Control_1;                                        // Variable to save received control signal value from UART module (u_1).
float Control_2;                                        // Variable to save received control signal value from UART module (u_2).
float Control_3;                                        // Variable to save received control signal value from UART module (u_3).
char ControlSignals[128];                               // Variable to save all the control signal values.
int long counter_1 = 0;                                 // Counter of signal A status on encoder of wheel 1.
int long counter_2 = 0;                                 // Counter of signal B status on encoder of wheel 1.
int long counter_3 = 0;                                 // Counter of signal A status on encoder of wheel 2.
int long counter_4 = 0;                                 // Counter of signal B status on encoder of wheel 2.
int long counter_5 = 0;                                 // Counter of signal A status on encoder of wheel 3.
int long counter_6 = 0;                                 // Counter of signal B status on encoder of wheel 3.
unsigned int counterflag_1 = 0;                         // Defined flag for encoder of wheel 1.
unsigned int counterflag_2 = 0;                         // Defined flag for encoder of wheel 2.
unsigned int counterflag_3 = 0;                         // Defined flag for encoder of wheel 3.
unsigned int interr_flag_1 = 0;                         // Flag for detection of timer 8 interruption.
unsigned int interr_flag_2 = 0;                         // Flag for detection of timer 7 interruption.
unsigned int interr_flag_3 = 0;                         // Flag for detection of timer 6 interruption.
unsigned int long pulsestart_1 = 0;                     // Variable to save pulse start time for encoder of wheel 1.
unsigned int long pulsestop_1 = 0;                      // Variable to save pulse stop time for encoder of wheel 1.
unsigned int long pulsestart_2 = 0;                     // Variable to save pulse start time for encoder of wheel 2.
unsigned int long pulsestop_2 = 0;                      // Variable to save pulse stop time for encoder of wheel 2.
unsigned int long pulsestart_3 = 0;                     // Variable to save pulse start time for encoder of wheel 3.
unsigned int long pulsestop_3 = 0;                      // Variable to save pulse stop time for encoder of wheel 3.
int direction_1 = 0;                                    // Variable to save the turning direction of wheel 1.
int direction_2 = 0;                                    // Variable to save the turning direction of wheel 2.
int direction_3 = 0;                                    // Variable to save the turning direction of wheel 3.
float ang_vel_1 = 0.0;                                  // Angular velocity in rad/s of wheel 1.
float ang_vel_2 = 0.0;                                  // Angular velocity in rad/s of wheel 2.
float ang_vel_3 = 0.0;                                  // Angular velocity in rad/s of wheel 3.
char angular_velocities[50];                            // Variable to save the angular displacements of robot wheels.
uint32_t *TC2_CV = (uint32_t *)(0x40080090);            // Pointer memory for channel 2 of timer 0.
uint32_t *TC5_CV = (uint32_t *)(0x40084090);            // Pointer memory for channel 2 of timer 1.
uint32_t *TC8_CV = (uint32_t *)(0x40088090);            // Pointer memory for channel 2 of timer 2.
//-----------------------------------------------------------------------------------
void setup(){
  //---------------------------------------------------------------------------------
  // Configuring digital inputs and outputs:
  pinMode(ENA,OUTPUT);                                  // Configuring pin 2 as output.
  pinMode(IN1,OUTPUT);                                  // Configuring pin 22 as output.
  pinMode(IN2,OUTPUT);                                  // Configuring pin 23 as output.
  pinMode(ENB,OUTPUT);                                  // Configuring pin 3 as output.
  pinMode(IN3,OUTPUT);                                  // Configuring pin 24 as output.
  pinMode(IN4,OUTPUT);                                  // Configuring pin 25 as output.
  pinMode(ENC,OUTPUT);                                  // Configuring pin 4 as output.
  pinMode(IN5,OUTPUT);                                  // Configuring pin 26 as output.
  pinMode(IN6,OUTPUT);                                  // Configuring pin 27 as output.
  pinMode(Q1A,INPUT);                                   // Configuring pin 48 as input.
  pinMode(Q1B,INPUT);                                   // Configuring pin 49 as input.
  pinMode(Q2A,INPUT);                                   // Configuring pin 50 as input.
  pinMode(Q2B,INPUT);                                   // Configuring pin 51 as input.
  pinMode(Q3A,INPUT);                                   // Configuring pin 52 as input.
  pinMode(Q3B,INPUT);                                   // Configuring pin 53 as input.
  //---------------------------------------------------------------------------------
  // Open a serial connection:
  Serial.begin(250000);                                 // Open a serial connection.
  init_cbuff();                                         // Clear buffer.
  //---------------------------------------------------------------------------------
  // Enable Timer interrupts at 2 Hz:
  pmc_set_writeprotect(false);                          // Disables the write protection.
  TC2_setup();                                          // Call TC2_setup function.
  TC5_setup();                                          // Call TC5_setup function.
  TC8_setup();                                          // Call TC8_setup function.
  //---------------------------------------------------------------------------------
  // Activate interrupts for counting pulses on attached encoders on robot's wheels:
  attachInterrupt(digitalPinToInterrupt(Q1A),Q1A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q1B),Q1B_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2A),Q2A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2B),Q2B_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3A),Q3A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3B),Q3B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------
// Setting Timer TC2 and TC2 interrupt:
void TC2_setup(){
  PMC -> PMC_PCER0 |= PMC_PCER0_PID29;                            // TC2 power ON: Timer counter 0 and channel 2 is TC2.
  TC0 -> TC_CHANNEL[2].TC_CMR = TC_CMR_TCCLKS_TIMER_CLOCK1        // MCK/2 = 42 MHz, clk on rising edge.
                                | TC_CMR_WAVE                     // Waveform mode.
                                | TC_CMR_WAVSEL_UP_RC;            // Up mode with automatic trigger on RC compare.
  TC0 -> TC_CHANNEL[2].TC_RC = 21000000;                          // Frequency = (MCK/2)/TC_RC Hz.
  TC0 -> TC_CHANNEL[2].TC_IER = TC_IER_CPCS;                      // Enables the RC Compare Interrupt.
  TC0 -> TC_CHANNEL[2].TC_CCR = TC_CCR_SWTRG | TC_CCR_CLKEN;      // Software trigger TC0[2] and counter clock enabled.
  NVIC_EnableIRQ(TC2_IRQn);                                       // Enables TC2 interrupt.
}
//-----------------------------------------------------------------------------------
// Setting Timer TC5 and TC5 interrupt:
void TC5_setup(){
  PMC -> PMC_PCER1 |= PMC_PCER1_PID32;                            // TC5 power ON: Timer counter 1 channel 2 is TC5.
  TC1 -> TC_CHANNEL[2].TC_CMR = TC_CMR_TCCLKS_TIMER_CLOCK1        // MCK/2 = 42 MHz, clk on rising edge.
                                | TC_CMR_WAVE                     // Waveform mode.
                                | TC_CMR_WAVSEL_UP_RC;            // Up mode with automatic trigger on RC compare.
  TC1 -> TC_CHANNEL[2].TC_RC = 21000000;                          // Frequency = (MCK/2)/TC_RC Hz.
  TC1 -> TC_CHANNEL[2].TC_IER = TC_IER_CPCS;                      // Enables the RC Compare Interrupt.
  TC1 -> TC_CHANNEL[2].TC_CCR = TC_CCR_SWTRG | TC_CCR_CLKEN;      // Software trigger TC1[2] and counter clock enabled.
  NVIC_EnableIRQ(TC5_IRQn);                                       // Enables TC5 interrupt.
}
//-----------------------------------------------------------------------------------
// Setting Timer TC8 and TC8 interrupt:
void TC8_setup(){
  PMC -> PMC_PCER1 |= PMC_PCER1_PID35;                            // TC8 power ON: Timer counter 2 channel 2 is TC8.
  TC2 -> TC_CHANNEL[2].TC_CMR = TC_CMR_TCCLKS_TIMER_CLOCK1        // MCK/2 = 42 MHz, clk on rising edge.
                                | TC_CMR_WAVE                     // Waveform mode.
                                | TC_CMR_WAVSEL_UP_RC;            // Up mode with automatic trigger on RC compare.
  TC2 -> TC_CHANNEL[2].TC_RC = 21000000;                          // Frequency = (MCK/2)/TC_RC Hz.
  TC2 -> TC_CHANNEL[2].TC_IER = TC_IER_CPCS;                      // Enables the RC Compare Interrupt.
  TC2 -> TC_CHANNEL[2].TC_CCR = TC_CCR_SWTRG | TC_CCR_CLKEN;      // Software trigger TC2[2] and counter clock enabled.
  NVIC_EnableIRQ(TC8_IRQn);                                       // Enables TC8 interrupt.
}
//-----------------------------------------------------------------------------------
// TC2 interrupt at 2 Hz.
void TC2_Handler(){
  detachInterrupt(digitalPinToInterrupt(Q3A));
  detachInterrupt(digitalPinToInterrupt(Q3B));
  TC0 -> TC_CHANNEL[2].TC_SR;                                     // Read and clear status register.
  if(interr_flag_3 == 1){
    ang_vel_3 = 0.0;                                              // Setting angular velocity of robot wheel 3 to zero.
    direction_3 = 0;                                              // Setting turning direction identifier of wheel 3 to zero.
  }
  else{
    counter_5 = 0; counter_6 = 0;                                 // Set counters to zero.
    pulsestart_3 = 0; pulsestop_3 = 0;                            // Set pulse time variables to zero.
    interr_flag_3 = 1;                                            // Set interrupt detection flag 3 to one.
    counterflag_3 = 0;                                            // Set turning counter flag 3 to zero.
  }      
  attachInterrupt(digitalPinToInterrupt(Q3A),Q3A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3B),Q3B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------
// TC5 interrupt at 2 Hz.
void TC5_Handler(){
  detachInterrupt(digitalPinToInterrupt(Q2A));
  detachInterrupt(digitalPinToInterrupt(Q2B));
  TC1 -> TC_CHANNEL[2].TC_SR;                                     // Read and clear status register.
  if(interr_flag_2 == 1){
    ang_vel_2 = 0.0;                                              // Setting angular velocity of robot wheel 2 to zero.
    direction_2 = 0;                                              // Setting turning direction identifier of wheel 2 to zero.
  }
  else{
    counter_3 = 0; counter_4 = 0;                                 // Set counters to zero.
    pulsestart_2 = 0; pulsestop_2 = 0;                            // Set pulse time variables to zero.
    interr_flag_2 = 1;                                            // Set interrupt detection flag 2 to one.
    counterflag_2 = 0;                                            // Set turning counter flag 2 to zero.
  }      
  attachInterrupt(digitalPinToInterrupt(Q2A),Q2A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2B),Q2B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------
// TC8 interrupt at 2 Hz.
void TC8_Handler(){
  detachInterrupt(digitalPinToInterrupt(Q1A));
  detachInterrupt(digitalPinToInterrupt(Q1B));
  TC2 -> TC_CHANNEL[2].TC_SR;                                     // Read and clear status register.
  if(interr_flag_1 == 1){
    ang_vel_1 = 0.0;                                              // Setting angular velocity of robot wheel 1 to zero.
    direction_1 = 0;                                              // Setting turning direction identifier of wheel 1 to zero.
  }
  else{
    counter_1 = 0; counter_2 = 0;                                 // Set counters to zero.
    pulsestart_1 = 0; pulsestop_1 = 0;                            // Set pulse time variables to zero.
    interr_flag_1 = 1;                                            // Set interrupt detection flag 2 to one.
    counterflag_1 = 0;                                            // Set turning counter flag 2 to zero.
  }      
  attachInterrupt(digitalPinToInterrupt(Q1A),Q1A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q1B),Q1B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------
// initializing buffer:
void init_cbuff(void){
  int i;
  flagcommand = 0;
  for(i = 0; i < buffer; i++){                          // Bucle that set to 0 all.
    chain[i] = 0x00;                                    // characters in buffer.
  }
  Ibuff = 0x00;                                         // initialize the index.
}
//-----------------------------------------------------------------------------------
// Adding characters to buffer:
void add_2_cbuff(char c){
  switch(c){
    case 0x0D:                                          // Line Feed 1 -> Enable flag.
    flagcommand = 1;
    break;
    case 0x0A:                                          // Line Feed 2 -> Enable flag.
    flagcommand = 1;
    break;
    case 0x08:                                          // Del -> Delete last character from buffer.
    if(Ibuff > 0) chain[--Ibuff] = 0x00;
    break;
    default:                                            // Add received character to buffer.
    chain[Ibuff++] = c;
  }
}
//-----------------------------------------------------------------------------------
// Changing character string to floating numbers:
void string2float(){
  int i = 0; int j = 0; int r = 0; int s = 0; int t = 0;
  // separating received data from UART module:
  for(i = 0; i < Ibuff; i++){
    if(chain[i] == ','){
      j++;
    }
    else if(chain[i] != ',' && j == 0){
      datoO[r++] = chain[i];
    }
    else if(chain[i] != ',' && j == 1){
      datoP[s++] = chain[i];
    }
    else if(chain[i] != ';' && j == 2){
      datoQ[t++] = chain[i];
    }
    else{
      delayMicroseconds(1);                             // 1 microsecond delay.
    }
  }
// Saving the orientation matrix values to a floating number matrix.
Control_1 = atof(datoO);                                // Getting control signal value for moving wheel 1 (-100 to 100).
Control_2 = atof(datoP);                                // Getting control signal value for moving wheel 2 (-100 to 100).
Control_3 = atof(datoQ);                                // Getting control signal value for moving wheel 3 (-100 to 100).
}
//-----------------------------------------------------------------------------------
// Motion generation for wheel 1 (according to control signal):
void MovingWheel_1(float value){
  int PWMdc;
  PWMdc = abs(value*65535.0)/100.0;                     // Duty cycle value in Ticks.
  if(value < 0){
    digitalWrite(IN1,HIGH);
    digitalWrite(IN2,LOW);                              // “Counterclockwise” rotation of motor.
  }
  else if(value == 0){
    digitalWrite(IN1,LOW);
    digitalWrite(IN2,LOW);                              // No rotation.
  }
  else{
    digitalWrite(IN1,LOW);
    digitalWrite(IN2,HIGH);                             // “Clockwise” rotation of motor.
  }
  analogWriteResolution(16);                            // 16 bits of PWM signal resolution.
  analogWrite(ENA,PWMdc);                               // Setting duty cycle value in PWM of wheel 1.
}
//-----------------------------------------------------------------------------------
// Motion generation for wheel 2 (according to control signal):
void MovingWheel_2(float value){
  int PWMdc;
  PWMdc = abs(value*65535.0)/100.0;                     // Duty cycle value in Ticks.
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
  analogWriteResolution(16);                            // 16 bits of PWM signal resolution.
  analogWrite(ENB,PWMdc);                               // Setting duty cycle value in PWM of wheel 2.
}
//-----------------------------------------------------------------------------------
// Motion generation for wheel 3 (according to control signal):
void MovingWheel_3(float value){
  int PWMdc;
  PWMdc = abs(value*65535.0)/100.0;                     // Duty cycle value in Ticks.
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
  analogWriteResolution(16);                            // 16 bits of PWM signal resolution.
  analogWrite(ENC,PWMdc);                               // Setting duty cycle value in PWM of wheel 3.
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder on wheel 1:
void Q1A_Interrupt(){
  detachInterrupt(digitalPinToInterrupt(Q1A));
  detachInterrupt(digitalPinToInterrupt(Q1B));
  if(digitalRead(Q1A) == HIGH && digitalRead(Q1B) == LOW){
    counter_1--;
    direction_1 = -1;
  }
  else if(digitalRead(Q1A) == LOW && digitalRead(Q1B) == HIGH){
    counter_1--;
    direction_1 = -1;
  }
  else{
    counter_1++;
    direction_1 = 1;
  }
  if(counterflag_1 == 4){
    counterflag_1 = 0;
    pulsestop_1 = *TC8_CV;
    ang_vel_1 = (direction_1*42.0E6*2.0*M_PI)/(160.0*(pulsestop_1 - pulsestart_1));    // Computing angular velocity of wheel 1, in rad/s.
  }
  else{
    counterflag_1++;
    if(counterflag_1 == 1){
      pulsestart_1 = *TC8_CV;
    }
    if(counterflag_1 == 2 && interr_flag_1 == 1){
      interr_flag_1 = 0;
    }
  }
  attachInterrupt(digitalPinToInterrupt(Q1A),Q1A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q1B),Q1B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder on wheel 1:
void Q1B_Interrupt(){
  detachInterrupt(digitalPinToInterrupt(Q1A));
  detachInterrupt(digitalPinToInterrupt(Q1B));
  if(digitalRead(Q1B) == HIGH && digitalRead(Q1A) == HIGH){
    counter_2--;
    direction_1 = -1;
  }
  else if(digitalRead(Q1B) == LOW && digitalRead(Q1A) == LOW){
    counter_2--;
    direction_1 = -1;
  }
  else{
    counter_2++;
    direction_1 = 1;
  }
  if(counterflag_1 == 4){
    counterflag_1 = 0;
    pulsestop_1 = *TC8_CV;
    ang_vel_1 = (direction_1*42.0E6*2.0*M_PI)/(160.0*(pulsestop_1 - pulsestart_1));
  }
  else{
    counterflag_1++;
    if(counterflag_1 == 1){
      pulsestart_1 = *TC8_CV;
    }
    if(counterflag_1 == 2 && interr_flag_1 == 1){
      interr_flag_1 = 0;
    }
  }
  attachInterrupt(digitalPinToInterrupt(Q1A),Q1A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q1B),Q1B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder on wheel 2:
void Q2A_Interrupt(){
  detachInterrupt(digitalPinToInterrupt(Q2A));
  detachInterrupt(digitalPinToInterrupt(Q2B));
  if(digitalRead(Q2A) == HIGH && digitalRead(Q2B) == LOW){
    counter_3--;
    direction_2 = -1;
  }
  else if(digitalRead(Q2A) == LOW && digitalRead(Q2B) == HIGH){
    counter_3--;
    direction_2 = -1;
  }
  else{
    counter_3++;
    direction_2 = 1;
  }
  if(counterflag_2 == 4){
    counterflag_2 = 0;
    pulsestop_2 = *TC5_CV;
    ang_vel_2 = (direction_2*42.0E6*2.0*M_PI)/(160.0*(pulsestop_2 - pulsestart_2));    // Computing angular velocity of wheel 2, in rad/s.
  }
  else{
    counterflag_2++;
    if(counterflag_2 == 1){
      pulsestart_2 = *TC5_CV;
    }
    if(counterflag_2 == 2 && interr_flag_2 == 1){
      interr_flag_2 = 0;
    }
  }
  attachInterrupt(digitalPinToInterrupt(Q2A),Q2A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2B),Q2B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder on wheel 2:
void Q2B_Interrupt(){
  detachInterrupt(digitalPinToInterrupt(Q2A));
  detachInterrupt(digitalPinToInterrupt(Q2B));
  if(digitalRead(Q2B) == HIGH && digitalRead(Q2A) == HIGH){
    counter_4--;
    direction_2 = -1;
  }
  else if(digitalRead(Q2B) == LOW && digitalRead(Q2A) == LOW){
    counter_4--;
    direction_2 = -1;
  }
  else{
    counter_4++;
    direction_2 = 1;
  }
  if(counterflag_2 == 4){
    counterflag_2 = 0;
    pulsestop_2 = *TC5_CV;
    ang_vel_2 = (direction_2*42.0E6*2.0*M_PI)/(160.0*(pulsestop_2 - pulsestart_2));
  }
  else{
    counterflag_2++;
    if(counterflag_2 == 1){
      pulsestart_2 = *TC5_CV;
    }
    if(counterflag_2 == 2 && interr_flag_2 == 1){
      interr_flag_2 = 0;
    }
  }
  attachInterrupt(digitalPinToInterrupt(Q2A),Q2A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2B),Q2B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder on wheel 3:
void Q3A_Interrupt(){
  detachInterrupt(digitalPinToInterrupt(Q3A));
  detachInterrupt(digitalPinToInterrupt(Q3B));
  if(digitalRead(Q3A) == HIGH && digitalRead(Q3B) == LOW){
    counter_5--;
    direction_3 = -1;
  }
  else if(digitalRead(Q3A) == LOW && digitalRead(Q3B) == HIGH){
    counter_5--;
    direction_3 = -1;
  }
  else{
    counter_5++;
    direction_3 = 1;
  }
  if(counterflag_3 == 4){
    counterflag_3 = 0;
    pulsestop_3 = *TC2_CV;
    ang_vel_3 = (direction_3*42.0E6*2.0*M_PI)/(160.0*(pulsestop_3 - pulsestart_3));    // Computing angular velocity of wheel 3, in rad/s.
  }
  else{
    counterflag_3++;
    if(counterflag_3 == 1){
      pulsestart_3 = *TC2_CV;
    }
    if(counterflag_3 == 2 && interr_flag_3 == 1){
      interr_flag_3 = 0;
    }
  }
  attachInterrupt(digitalPinToInterrupt(Q3A),Q3A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3B),Q3B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder on wheel 3:
void Q3B_Interrupt(){
  detachInterrupt(digitalPinToInterrupt(Q3A));
  detachInterrupt(digitalPinToInterrupt(Q3B));
  if(digitalRead(Q3B) == HIGH && digitalRead(Q3A) == HIGH){
    counter_6--;
    direction_3 = -1;
  }
  else if(digitalRead(Q3B) == LOW && digitalRead(Q3A) == LOW){
    counter_6--;
    direction_3 = -1;
  }
  else{
    counter_6++;
    direction_3 = 1;
  }
  if(counterflag_3 == 4){
    counterflag_3 = 0;
    pulsestop_3 = *TC2_CV;
    ang_vel_3 = (direction_3*42.0E6*2.0*M_PI)/(160.0*(pulsestop_3 - pulsestart_3));
  }
  else{
    counterflag_3++;
    if(counterflag_3 == 1){
      pulsestart_3 = *TC2_CV;
    }
    if(counterflag_3 == 2 && interr_flag_3 == 1){
      interr_flag_3 = 0;
    }
  }
  attachInterrupt(digitalPinToInterrupt(Q3A),Q3A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3B),Q3B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------
void loop(){
  char cmd[buffer];
  while(Serial.available() > 0){
    caracter = 0x00;
    caracter = Serial.read();                           // Last received character.
    add_2_cbuff(caracter);                              // Add character to buffer.
  }
  if(flagcommand == 1){
    string2float();                                     // Call string2float() function. 
    init_cbuff();                                       // Clear buffer.
    MovingWheel_1(Control_1);                           // Calling function that moves wheel 1.
    MovingWheel_2(Control_2);                           // Calling function that moves wheel 2.
    MovingWheel_3(Control_3);                           // Calling function that moves wheel 3.
    sprintf(angular_velocities,":1,%1.4f,%1.4f,%1.4f;\n\r",ang_vel_1,ang_vel_2,ang_vel_3);
    Serial.println(angular_velocities);                 // Return the angular velocities to external device.
  }
  else NOP;                                             // No operation.
}
