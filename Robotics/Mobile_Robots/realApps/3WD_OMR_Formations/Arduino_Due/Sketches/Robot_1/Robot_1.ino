/*  Embedded driver on OMR No. 1 (Gray robot).
 Working at 84 Mhz... */
//-----------------------------------------------------------------------------------------------------------------------------
// Defining mathematical values:
#define _USE_MATH_DEFINES                                         // Mathematical definitions.
#define MCK 84.0E6                                                // Master Clock (MCK) frequency.
#define baudRate 115200                                           // Desired baud rate communication via UART peripherals.
#define PWMs_Frequency 1000                                       // Desired frequency for PWM signals in Hertz.
#define PWMs_Resolution 16                                        // Desired resolution for PWM signals.
#define freq_hz_8 10                                              // Frequency in Hz for instructions execution of Timer TC8.
#define NOP __asm__ __volatile__ ("nop\n\t")                      // Nop instruction (asm).
#define n_1 80.0f                                                 // [m/m], built-in gear ratio by each omni wheel.
//-----------------------------------------------------------------------------------------------------------------------------
// Including libraries to the program:
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include <Servo.h>
//-----------------------------------------------------------------------------------------------------------------------------
// Defining the used variables in this sketch:
const unsigned int ENA = 2;                                       // Choosing this pin to generate PWM on wheel 1.
const unsigned int IN1 = 22;                                      // Choosing this pin to set the turning sense on wheel 1.
const unsigned int IN2 = 23;                                      // Choosing this pin to set the turning sense on wheel 1.
const unsigned int ENB = 3;                                       // Choosing this pin to generate PWM on wheel 2.
const unsigned int IN3 = 24;                                      // Choosing this pin to set the turning sense on wheel 2.
const unsigned int IN4 = 25;                                      // Choosing this pin to set the turning sense on wheel 2.
const unsigned int ENC = 4;                                       // Choosing this pin to generate PWM on wheel 3.
const unsigned int IN5 = 26;                                      // Choosing this pin to set the turning sense on wheel 3.
const unsigned int IN6 = 27;                                      // Choosing this pin to set the turning sense on wheel 3.
const unsigned int RST = 28;                                      // RST pin of the XBee USB adapter is connected to a GPIO pin on your microcontroller for reset the XBee module.
const unsigned int Q1A = 48;                                      // Choosing this pin for encoder's channel A on wheel 1.
const unsigned int Q1B = 49;                                      // Choosing this pin for encoder's channel B on wheel 1.
const unsigned int Q2A = 50;                                      // Choosing this pin for encoder's channel A on wheel 2.
const unsigned int Q2B = 51;                                      // Choosing this pin for encoder's channel B on wheel 2.
const unsigned int Q3A = 52;                                      // Choosing this pin for encoder's channel A on wheel 3.
const unsigned int Q3B = 53;                                      // Choosing this pin for encoder's channel B on wheel 3.
const unsigned int buffer = 128;                                  // buffer length.
int Ibuff = 0x00;                                                 // Index: next char in cbuff.
int flagcommand;                                                  // Available command flag.
int direction_1 = 0;                                              // Variable to save the turning direction of wheel 1.
int direction_2 = 0;                                              // Variable to save the turning direction of wheel 2.
int direction_3 = 0;                                              // Variable to save the turning direction of wheel 3.
unsigned int counterflag_1 = 0;                                   // Defined flag for encoder of wheel 1.
unsigned int counterflag_2 = 0;                                   // Defined flag for encoder of wheel 2.
unsigned int counterflag_3 = 0;                                   // Defined flag for encoder of wheel 3.
int long counter_1 = 0;                                           // Counter of signal A status on encoder of wheel 1.
int long counter_2 = 0;                                           // Counter of signal B status on encoder of wheel 1.
int long counter_3 = 0;                                           // Counter of signal A status on encoder of wheel 2.
int long counter_4 = 0;                                           // Counter of signal B status on encoder of wheel 2.
int long counter_5 = 0;                                           // Counter of signal A status on encoder of wheel 3.
int long counter_6 = 0;                                           // Counter of signal B status on encoder of wheel 3.
unsigned int long pulsetime_1 = 0;                                // Variable to save pulse time a for encoder of wheel 1.
unsigned int long pulsetime_2 = 0;                                // Variable to save pulse time a for encoder of wheel 2.
unsigned int long pulsetime_3 = 0;                                // Variable to save pulse time a for encoder of wheel 3.
char datoO[16], datoP[16], datoQ[16];                             // Character vectors.
char chain[buffer];                                               // Reception buffer.
char angular_velocities[32];                                      // Variable to save the angular displacements of robot wheels.
char ControlSignals[64];                                          // Variable to save all the control signal values.
// char character;                                                   // Variable to save received character by UART module.
float Control_1;                                                  // Variable to save received control signal value from UART module (u_1).
float Control_2;                                                  // Variable to save received control signal value from UART module (u_2).
float Control_3;                                                  // Variable to save received control signal value from UART module (u_3).
double ang_vel_1 = 0.0;                                           // Angular velocity in rad/s of wheel 1.
double ang_vel_2 = 0.0;                                           // Angular velocity in rad/s of wheel 2.
double ang_vel_3 = 0.0;                                           // Angular velocity in rad/s of wheel 3.
volatile uint32_t iterations = 0;                                 // Iterations counter in the execution of this program.
//-----------------------------------------------------------------------------------------------------------------------------
void setup(){
  //---------------------------------------------------------------------------------------------------------------------------
  delay(200);                                                     // 200 milliseconds delay.
  // Configuring digital inputs and outputs:
  pinMode(ENA,OUTPUT);                                            // Configuring pin 2 as output.
  pinMode(IN1,OUTPUT);                                            // Configuring pin 22 as output.
  pinMode(IN2,OUTPUT);                                            // Configuring pin 23 as output.
  pinMode(ENB,OUTPUT);                                            // Configuring pin 3 as output.
  pinMode(IN3,OUTPUT);                                            // Configuring pin 24 as output.
  pinMode(IN4,OUTPUT);                                            // Configuring pin 25 as output.
  pinMode(ENC,OUTPUT);                                            // Configuring pin 4 as output.
  pinMode(IN5,OUTPUT);                                            // Configuring pin 26 as output.
  pinMode(IN6,OUTPUT);                                            // Configuring pin 27 as output.
  pinMode(RST,OUTPUT);                                            // Configuring pin 28 as output.
  pinMode(Q1A,INPUT);                                             // Configuring pin 48 as input.
  pinMode(Q1B,INPUT);                                             // Configuring pin 49 as input.
  pinMode(Q2A,INPUT);                                             // Configuring pin 50 as input.
  pinMode(Q2B,INPUT);                                             // Configuring pin 51 as input.
  pinMode(Q3A,INPUT);                                             // Configuring pin 52 as input.
  pinMode(Q3B,INPUT);                                             // Configuring pin 53 as input.
  //---------------------------------------------------------------------------------------------------------------------------
  // Open a serial connection:
  Serial.begin(baudRate);                                         // Open a serial connection through UART 0.
  Serial2.begin(baudRate);                                        // Open a serial connection through UART 2.
  digitalWrite(RST,HIGH);                                         // Turn RST pin to HIGH for establishing UART communication with Xbee.
  init_cbuff();                                                   // Clear buffer.
  //---------------------------------------------------------------------------------------------------------------------------
  // Enable Timer TC8 interrupt at 10 Hz:
  TC8_setup();                                                    // Call TC8_setup function.
  //---------------------------------------------------------------------------------------------------------------------------
  // Activate interrupts for counting pulses on attached encoders on robot's wheels:
  attachInterrupt(digitalPinToInterrupt(Q1A),Q1A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q1B),Q1B_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2A),Q2A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2B),Q2B_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3A),Q3A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3B),Q3B_Interrupt,CHANGE);
}
//-----------------------------------------------------------------------------------------------------------------------------
// Setting Timer TC8 and TC8 interrupt:
void TC8_setup(){
  pmc_set_writeprotect(false);                                    // Disables the write protection.
  PMC -> PMC_PCER1 |= PMC_PCER1_PID35;                            // TC8 power ON: Timer counter 2 channel 2 is TC8.
  TC2 -> TC_CHANNEL[2].TC_CMR = TC_CMR_TCCLKS_TIMER_CLOCK1        // MCK/2 = 42 MHz, clk on rising edge.
                                | TC_CMR_WAVE                     // Waveform mode.
                                | TC_CMR_WAVSEL_UP_RC;            // Up mode with automatic trigger on RC compare.
  TC2 -> TC_CHANNEL[2].TC_RC = 4200000;                           // Frequency = (MCK/2)/TC_RC Hz.
  TC2 -> TC_CHANNEL[2].TC_IER = TC_IER_CPCS;                      // Enables the RC Compare Interrupt.
  TC2 -> TC_CHANNEL[2].TC_CCR = TC_CCR_SWTRG | TC_CCR_CLKEN;      // Software trigger TC2 and counter clock enabled.
  NVIC_EnableIRQ(TC8_IRQn);                                       // Enables TC8 interrupt.
}
//-----------------------------------------------------------------------------------------------------------------------------
// TC8 interrupt at 10 Hz.
void TC8_Handler(){
  TC2 -> TC_CHANNEL[2].TC_SR;                                     // Read and clear status register.
  iterations++;                                                   // Increasing execution iterations.
  if(direction_1 == 0){
    ang_vel_1 = 0.0;                                              // Setting angular velocity of robot wheel 1 to zero.
  }
  if(direction_2 == 0){
    ang_vel_2 = 0.0;                                              // Setting angular velocity of robot wheel 2 to zero.
  }
  if(direction_3 == 0){
    ang_vel_3 = 0.0;                                              // Setting angular velocity of robot wheel 3 to zero.
  }
  counter_1 = 0; counter_2 = 0; counter_3 = 0;                    // Set counters to zero.
  counter_4 = 0; counter_5 = 0; counter_6 = 0;                    // Set counters to zero.
  pulsetime_1 = 0; pulsetime_2 = 0; pulsetime_3 = 0;              // Pulse time variables to zero.
  direction_1 = 0; direction_2 = 0; direction_3 = 0;              // Turning direction of robot wheels to zero.
  counterflag_1 = 0; counterflag_2 = 0; counterflag_3 = 0;        // Turning the counter flags to zero.
  // Packing and streaming the angular velocities of this OMR:
  sprintf(angular_velocities,":0,%1.3f,%1.3f,%1.3f;",ang_vel_1,ang_vel_2,ang_vel_3);
  Serial2.println(angular_velocities);
}
//-----------------------------------------------------------------------------------------------------------------------------
// initializing buffer:
void init_cbuff(void){
  int i;
  flagcommand = 0;                                                // Reset flagcommand value.
  for(i = 0; i < buffer; i++){                                    // Bucle that set to 0 all.
    chain[i] = 0x00;                                              // characters in buffer.
  }
  Ibuff = 0x00;                                                   // initialize the index.
}
//-----------------------------------------------------------------------------------------------------------------------------
// Adding characters to buffer:
void add_2_cbuff(char c){
  switch(c){
    case 0x0D:                                                    // Line Feed 1 -> Enable flag.
    flagcommand = 1;
    break;
    case 0x0A:                                                    // Line Feed 2 -> Enable flag.
    flagcommand = 1;
    break;
    case 0x08:                                                    // Del -> Delete last character from buffer.
    if(Ibuff > 0) chain[--Ibuff] = 0x00;
    break;
    default:                                                      // Add received character to buffer.
    chain[Ibuff++] = c;
  }
}
//-----------------------------------------------------------------------------------------------------------------------------
// Changing character string to floating numbers:
void string2float(){
  int i = 0; int j = 0; int r = 0; int s = 0; int t = 0;
  // separating received data from UART module:
  for(i = 0; i < Ibuff; i++){
    if(chain[i] == ','){                                          // Detecting ',' within data chain.
      j++;
    }
    else if(chain[i] != ',' && j == 1){
      datoO[r++] = chain[i];                                      // Store value string to dato0.
    }
    else if(chain[i] != ',' && j == 2){
      datoP[s++] = chain[i];                                      // Store value string to datoP.
    }
    else if(chain[i] != ';' && j == 3){
      datoQ[t++] = chain[i];                                      // Store value string to datoQ. 
    }
    else NOP;                                                     // No operation.
  }
// Saving the orientation matrix values to a floating number matrix.
Control_1 = atof(datoO);                                          // Getting control signal value for moving wheel 1 (-100 to 100).
Control_2 = atof(datoP);                                          // Getting control signal value for moving wheel 2 (-100 to 100).
Control_3 = atof(datoQ);                                          // Getting control signal value for moving wheel 3 (-100 to 100).
}
//-----------------------------------------------------------------------------------------------------------------------------
// Motion generation for wheel 1 (according to control signal):
void MovingWheel_1(float value){
  int PWMdc;
  PWMdc = abs(value*65535.0f)/100.0f;                             // Duty cycle value in Ticks.
  if(value < 0){
    digitalWrite(IN1,HIGH);
    digitalWrite(IN2,LOW);                                        // Turn wheel 1 in counterclockwise direction.
  }
  else if(value == 0){
    digitalWrite(IN1,LOW);
    digitalWrite(IN2,LOW);                                        // Wheel 1 locked.
  }
  else{
    digitalWrite(IN1,LOW);
    digitalWrite(IN2,HIGH);                                       // Turn wheel 2 in clockwise direction.
  }
  analogWriteResolution(PWMs_Resolution);                         // 16 bits of PWM signal resolution.
  analogWrite(ENA,PWMdc);                                         // Setting duty cycle value in PWM of wheel 1 (1 Khz).
}
//-----------------------------------------------------------------------------------------------------------------------------
// Motion generation for wheel 2 (according to control signal):
void MovingWheel_2(float value){
  int PWMdc;
  PWMdc = abs(value*65535.0f)/100.0f;                             // Duty cycle value in Ticks.
  if(value < 0){
    digitalWrite(IN3,HIGH);
    digitalWrite(IN4,LOW);                                        // Turn wheel 2 in counterclockwise direction.
  }
  else if(value == 0){
    digitalWrite(IN3,LOW);
    digitalWrite(IN4,LOW);                                        // Wheel 2 locked.
  }
  else{
    digitalWrite(IN3,LOW);
    digitalWrite(IN4,HIGH);                                       // Turn wheel 2 in clockwise direction.
  }
  analogWriteResolution(PWMs_Resolution);                         // 16 bits of PWM signal resolution.
  analogWrite(ENB,PWMdc);                                         // Setting duty cycle value in PWM of wheel 2 (1 Khz).
}
//-----------------------------------------------------------------------------------------------------------------------------
// Motion generation for wheel 3 (according to control signal):
void MovingWheel_3(float value){
  int PWMdc;
  PWMdc = abs(value*65535.0f)/100.0f;                             // Duty cycle value in Ticks.
  if(value < 0){
    digitalWrite(IN5,HIGH);
    digitalWrite(IN6,LOW);                                        // Turn wheel 3 in counterclockwise direction.
  }
  else if(value == 0){
    digitalWrite(IN5,LOW);
    digitalWrite(IN6,LOW);                                        // Wheel 3 locked.
  }
  else{
    digitalWrite(IN5,LOW);
    digitalWrite(IN6,HIGH);                                       // Turn wheel 3 in clockwise direction.
  }
  analogWriteResolution(PWMs_Resolution);                         // 16 bits of PWM signal resolution.
  analogWrite(ENC,PWMdc);                                         // Setting duty cycle value in PWM of wheel 3 (1 Khz).
}
//-----------------------------------------------------------------------------------------------------------------------------
// Interruption by change of signal A of encoder on wheel 1:
void Q1A_Interrupt(){
  if(digitalRead(Q1A) == HIGH && digitalRead(Q1B) == LOW){
    counter_1--;
    direction_1 = -1;                                             // Wheel 1 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q1A) == LOW && digitalRead(Q1B) == HIGH){
    counter_1--;
    direction_1 = -1;                                             // Wheel 1 is moving in counterclockwise direction.
  }
  else{
    counter_1++;
    direction_1 = 1;                                              // Wheel 1 is moving in clockwise direction.
  }
  if(counterflag_1 == 1){
    counterflag_1 = 0;
    pulsetime_1 = TC2 -> TC_CHANNEL[2].TC_CV - pulsetime_1;       // Read the Compare Timer TC2 register and differentiate to previous reading.
    // Computing angular velocity of wheel 1, in [rad/s] ((direction_3*MCK*2*PI)/(Prescaler*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_1)):
    ang_vel_1 = (direction_1*MCK*2.0*M_PI)/(2.0*8.0*n_1*pulsetime_1);
  }
  else{
    counterflag_1 = 1;
    pulsetime_1 = TC2 -> TC_CHANNEL[2].TC_CV;                     // Read the Compare Timer TC2 register.
  }
}
//-----------------------------------------------------------------------------------------------------------------------------
// Interruption by change of signal B of encoder on wheel 1:
void Q1B_Interrupt(){
  if(digitalRead(Q1B) == HIGH && digitalRead(Q1A) == HIGH){
    counter_2--;
    direction_1 = -1;                                             // Wheel 1 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q1B) == LOW && digitalRead(Q1A) == LOW){
    counter_2--;
    direction_1 = -1;                                             // Wheel 1 is moving in counterclockwise direction.
  }
  else{
    counter_2++;
    direction_1 = 1;                                              // Wheel 1 is moving in clockwise direction.
  }
  if(counterflag_1 == 1){
    counterflag_1 = 0;
    pulsetime_1 = TC2 -> TC_CHANNEL[2].TC_CV - pulsetime_1;       // Read the Compare Timer TC2 register and differentiate to previous reading.
    // Computing angular velocity of wheel 1, in [rad/s] ((direction_1*MCK*2*PI)/(Prescaler*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_1)):
    ang_vel_1 = (direction_1*MCK*2.0*M_PI)/(2.0*8.0*n_1*pulsetime_1);
  }
  else{
    counterflag_1 = 1;
    pulsetime_1 = TC2 -> TC_CHANNEL[2].TC_CV;                     // Read the Compare Timer TC2 register.
  }
}
//-----------------------------------------------------------------------------------------------------------------------------
// Interruption by change of signal A of encoder on wheel 2:
void Q2A_Interrupt(){
  if(digitalRead(Q2A) == HIGH && digitalRead(Q2B) == LOW){
    counter_3--;
    direction_2 = -1;                                             // Wheel 2 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q2A) == LOW && digitalRead(Q2B) == HIGH){
    counter_3--;
    direction_2 = -1;                                             // Wheel 2 is moving in counterclockwise direction.
  }
  else{
    counter_3++;
    direction_2 = 1;                                              // Wheel 2 is moving in clockwise direction.
  }
  if(counterflag_2 == 1){
    counterflag_2 = 0;
    pulsetime_2 = TC2 -> TC_CHANNEL[2].TC_CV - pulsetime_2;       // Read the Compare Timer TC2 register and differentiate to previous reading.
    // Computing angular velocity of wheel 2, in [rad/s] ((direction_2*MCK*2*PI)/(Prescaler*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_2)):
    ang_vel_2 = (direction_2*MCK*2.0*M_PI)/(2.0*8.0*n_1*pulsetime_2);
  }
  else{
    counterflag_2 = 1;
    pulsetime_2 = TC2 -> TC_CHANNEL[2].TC_CV;                     // Read the Compare Timer TC2 register.
  }
}
//-----------------------------------------------------------------------------------------------------------------------------
// Interruption by change of signal B of encoder on wheel 2:
void Q2B_Interrupt(){
  if(digitalRead(Q2B) == HIGH && digitalRead(Q2A) == HIGH){
    counter_4--;
    direction_2 = -1;                                             // Wheel 2 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q2B) == LOW && digitalRead(Q2A) == LOW){
    counter_4--;
    direction_2 = -1;                                             // Wheel 2 is moving in counterclockwise direction.
  }
  else{
    counter_4++;
    direction_2 = 1;                                              // Wheel 2 is moving in clockwise direction.
  }
  if(counterflag_2 == 1){
    counterflag_2 = 0;
    pulsetime_2 = TC2 -> TC_CHANNEL[2].TC_CV - pulsetime_2;       // Read the Compare Timer TC2 register and differentiate to previous reading.
    // Computing angular velocity of wheel 2, in [rad/s] ((direction_2*MCK*2*PI)/(Prescaler*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_2)):
    ang_vel_2 = (direction_2*MCK*2.0*M_PI)/(2.0*8.0*n_1*pulsetime_2);
  }
  else{
    counterflag_2 = 1;
    pulsetime_2 = TC2 -> TC_CHANNEL[2].TC_CV;                     // Read the Compare Timer TC2 register.
  }
}
//-----------------------------------------------------------------------------------------------------------------------------
// Interruption by change of signal A of encoder on wheel 3:
void Q3A_Interrupt(){
  if(digitalRead(Q3A) == HIGH && digitalRead(Q3B) == LOW){
    counter_5--;
    direction_3 = -1;                                             // Wheel 3 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q3A) == LOW && digitalRead(Q3B) == HIGH){
    counter_5--;
    direction_3 = -1;                                             // Wheel 3 is moving in counterclockwise direction.
  }
  else{
    counter_5++;
    direction_3 = 1;                                              // Wheel 3 is moving in clockwise direction.
  }
  if(counterflag_3 == 1){
    counterflag_3 = 0;
    pulsetime_3 = TC2 -> TC_CHANNEL[2].TC_CV - pulsetime_3;       // Read the Compare Timer TC2 register and differentiate to previous reading.
    // Computing angular velocity of wheel 3, in [rad/s] ((direction_2*MCK*2*PI)/(Prescaler*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_3)):
    ang_vel_3 = (direction_3*MCK*2.0*M_PI)/(2.0*8.0*n_1*pulsetime_3);
  }
  else{
    counterflag_3 = 1;
    pulsetime_3 = TC2 -> TC_CHANNEL[2].TC_CV;                     // Read the Compare Timer TC2 register.
  }
}
//-----------------------------------------------------------------------------------------------------------------------------
// Interruption by change of signal B of encoder on wheel 3:
void Q3B_Interrupt(){
  if(digitalRead(Q3B) == HIGH && digitalRead(Q3A) == HIGH){
    counter_6--;
    direction_3 = -1;                                             // Wheel 3 is moving in counterclockwise direction.
  }
  else if(digitalRead(Q3B) == LOW && digitalRead(Q3A) == LOW){
    counter_6--;
    direction_3 = -1;                                             // Wheel 3 is moving in counterclockwise direction.
  }
  else{
    counter_6++;
    direction_3 = 1;                                              // Wheel 3 is moving in clockwise direction.
  }
  if(counterflag_3 == 1){
    counterflag_3 = 0;
    pulsetime_3 = TC2 -> TC_CHANNEL[2].TC_CV - pulsetime_3;       // Read the Compare Timer TC2 register and differentiate to previous reading.
    // Computing angular velocity of wheel 3, in [rad/s] ((direction_2*MCK*2*PI)/(Prescaler*PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_3)):
    ang_vel_3 = (direction_3*MCK*2.0*M_PI)/(2.0*8.0*n_1*pulsetime_3);
  }
  else{
    counterflag_3 = 1;
    pulsetime_3 = TC2 -> TC_CHANNEL[2].TC_CV;                     // Read the Compare Timer TC2 register.
  }
}
//-----------------------------------------------------------------------------------------------------------------------------
void loop(){
  while(Serial2.available() > 0){
    // character = 0x00;
    char character = Serial2.read();                              // Last received character.
    add_2_cbuff(character);                                       // Add character to buffer.
  }
  if(flagcommand == 1){
    string2float();                                               // Call string2float() function. 
    init_cbuff();                                                 // Clear buffer.
    MovingWheel_1(Control_1);                                     // Calling function that moves wheel 1.
    MovingWheel_2(Control_2);                                     // Calling function that moves wheel 2.
    MovingWheel_3(Control_3);                                     // Calling function that moves wheel 3.
    delayMicroseconds(1);                                         // 1 microsecond delay.
  }
  else delay(20);                                                 // 20 milliseconds delay.
}
//-----------------------------------------------------------------------------------------------------------------------------
