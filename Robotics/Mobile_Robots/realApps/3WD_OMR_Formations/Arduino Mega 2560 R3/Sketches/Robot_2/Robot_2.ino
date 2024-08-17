/*  Embedded driver on OMR No. 1 (Gray robot).
 Working at 16 Mhz... */
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
const int IN1 = 3;                                      // Choosing this pin to set the turning sense on wheel 1.
const int IN2 = 4;                                      // Choosing this pin to set the turning sense on wheel 1.
const int ENB = 5;                                      // Choosing this pin to generate PWM on wheel 2.
const int IN3 = 6;                                      // Choosing this pin to set the turning sense on wheel 2.
const int IN4 = 7;                                      // Choosing this pin to set the turning sense on wheel 2.
const int ENC = 8;                                      // Choosing this pin to generate PWM on wheel 3.
const int IN5 = 9;                                      // Choosing this pin to set the turning sense on wheel 3.
const int IN6 = 10;                                     // Choosing this pin to set the turning sense on wheel 3.
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
int direction_1 = 0;                                    // Variable to save the turning direction of wheel 1.
int direction_2 = 0;                                    // Variable to save the turning direction of wheel 2.
int direction_3 = 0;                                    // Variable to save the turning direction of wheel 3.
//-----------------------------------------------------------------------------------
void setup(){
  //-----------------------------------------------------------------------------------
  // put your setup code here, to run once:
  // Configuring digital inputs and outputs:
  pinMode(ENA,OUTPUT);                                  // Configuring pin 2 as output.
  pinMode(IN1,OUTPUT);                                  // Configuring pin 3 as output.
  pinMode(IN2,OUTPUT);                                  // Configuring pin 4 as output.
  pinMode(ENB,OUTPUT);                                  // Configuring pin 5 as output.
  pinMode(IN3,OUTPUT);                                  // Configuring pin 6 as output.
  pinMode(IN4,OUTPUT);                                  // Configuring pin 7 as output.
  pinMode(ENC,OUTPUT);                                  // Configuring pin 8 as output.
  pinMode(IN5,OUTPUT);                                  // Configuring pin 9 as output.
  pinMode(IN6,OUTPUT);                                  // Configuring pin 10 as output.
  //---------------------------------------------------------------------------------
  // Open a serial connection:
  Serial.begin(250000);                                 // Open a serial connection.
  init_cbuff();                                         // Clear buffer.
  //---------------------------------------------------------------------------------
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
void loop(){
  // put your main code here, to run repeatedly:
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
  // sprintf(angular_velocities,":1,%1.4f,%1.4f,%1.4f;\n\r",ang_vel_1,ang_vel_2,ang_vel_3);
  // Serial.println(angular_velocities);
  // delay(100);                                           // .1 seconds delay.
}
