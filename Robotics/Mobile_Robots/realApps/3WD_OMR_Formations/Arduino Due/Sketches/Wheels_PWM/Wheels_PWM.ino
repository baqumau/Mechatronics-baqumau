/*  Testing PWMs on robot's wheels.
 */
//-----------------------------------------------------------------------------------
// Defining mathematical values:
#define _USE_MATH_DEFINES
// Including libraries to the program:
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <Servo.h>
//-----------------------------------------------------------------------------------
// Defining the used variables in this sketch:
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
int long counter_7 = 0;                                 // Multi-purpose counter.
float angle_1 = 0.0;                                    // Angular displacement in radians of wheel 1.
float angle_2 = 0.0;                                    // Angular displacement in radians of wheel 2.
float angle_3 = 0.0;                                    // Angular displacement in radians of wheel 3.
char angular_displacements[30];                         // Variable to save the angular displacements of robot wheels.
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
  // Enable Timer TC8 interrupt at 250 Hz:
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
// Setting Timer TC8 and TC8 interrupt:
void TC8_setup(){
  pmc_set_writeprotect(false);                                    // Disables the write protection.
  PMC -> PMC_PCER1 |= PMC_PCER1_PID35;                            // TC8 power ON: Timer counter 2 channel 2 is TC8.
  TC2 -> TC_CHANNEL[2].TC_CMR = TC_CMR_TCCLKS_TIMER_CLOCK1        // MCK/2 = 42 MHz, clk on rising edge.
                                | TC_CMR_WAVE                     // Waveform mode.
                                | TC_CMR_WAVSEL_UP_RC;            // Up mode with automatic trigger on RC compare.
  TC2 -> TC_CHANNEL[2].TC_RC = 168000;                            // Frequency = (MCK/2)/TC_RC Hz.
  TC2 -> TC_CHANNEL[2].TC_IER = TC_IER_CPCS;                      // Enables the RC Compare Interrupt.
  TC2 -> TC_CHANNEL[2].TC_CCR = TC_CCR_SWTRG | TC_CCR_CLKEN;      // Software trigger TC2 and counter clock enabled.
  NVIC_EnableIRQ(TC8_IRQn);
}
//-----------------------------------------------------------------------------------
// TC8 interrupt at 250 Hz.
void TC8_Handler(){
  TC2 -> TC_CHANNEL[2].TC_SR;                                     // Read and clear status register.
  angle_1 = (counter_1 + counter_2)*2.0*M_PI/640.0;               // Angle reached by wheel 1 each 1/250 secs.
  angle_2 = (counter_3 + counter_4)*2.0*M_PI/640.0;               // Angle reached by wheel 2 each 1/250 secs.
  angle_3 = (counter_5 + counter_6)*2.0*M_PI/640.0;               // Angle reached by wheel 3 each 1/250 secs.
  counter_1 = 0; counter_2 = 0; counter_3 = 0;                    // Set counters to zero.
  counter_4 = 0; counter_5 = 0; counter_6 = 0;                    // Set counters to zero.
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
  if(digitalRead(Q1A) == HIGH && digitalRead(Q1B) == LOW){
    counter_1--;
  }
  else if(digitalRead(Q1A) == LOW && digitalRead(Q1B) == HIGH){
    counter_1--;
  }
  else counter_1++;
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder on wheel 1:
void Q1B_Interrupt(){
  if(digitalRead(Q1B) == HIGH && digitalRead(Q1A) == HIGH){
    counter_2--;
  }
  else if(digitalRead(Q1B) == LOW && digitalRead(Q1A) == LOW){
    counter_2--;
  }
  else counter_2++;
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder on wheel 2:
void Q2A_Interrupt(){
  if(digitalRead(Q2A) == HIGH && digitalRead(Q2B) == LOW){
    counter_3--;
  }
  else if(digitalRead(Q2A) == LOW && digitalRead(Q2B) == HIGH){
    counter_3--;
  }
  else counter_3++;
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder on wheel 2:
void Q2B_Interrupt(){
  if(digitalRead(Q2B) == HIGH && digitalRead(Q2A) == HIGH){
    counter_4--;
  }
  else if(digitalRead(Q2B) == LOW && digitalRead(Q2A) == LOW){
    counter_4--;
  }
  else counter_4++;
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder on wheel 3:
void Q3A_Interrupt(){
  if(digitalRead(Q3A) == HIGH && digitalRead(Q3B) == LOW){
    counter_5--;
  }
  else if(digitalRead(Q3A) == LOW && digitalRead(Q3B) == HIGH){
    counter_5--;
  }
  else counter_5++;
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal B of encoder on wheel 3:
void Q3B_Interrupt(){
  if(digitalRead(Q3B) == HIGH && digitalRead(Q3A) == HIGH){
    counter_6--;
  }
  else if(digitalRead(Q3B) == LOW && digitalRead(Q3A) == LOW){
    counter_6--;
  }
  else counter_6++;
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
    // sprintf(ControlSignals,":1st,%1.4f,%1.4f,%1.4f;\n\r",Control_1,Control_2,Control_3);
    // Serial.println(ControlSignals);
    // delayMicroseconds(1);                               // 1 microsecond delay.
  }
  sprintf(angular_displacements,":1,%1.4f,%1.4f,%1.4f;\n\r",angle_1,angle_2,angle_3);
  Serial.println(angular_displacements);
  delay(100);                                           // .1 seconds delay.
}
