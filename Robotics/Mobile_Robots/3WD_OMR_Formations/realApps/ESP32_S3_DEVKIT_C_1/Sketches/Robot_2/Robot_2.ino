/*  Embedded driver on OMR No. 2 (Black robot).
 1. ESP32S3 is Working at 240 Mhz (Bluetooth and WiFi);
 2. ESP32S3 is also Working at 80 Mhz (Timers). 
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
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include "esp_timer.h"
#include <HardwareSerial.h>
#include "driver/mcpwm.h"
#include "src/baqumau/3WD_OMRs_Controllers.h"
//-----------------------------------------------------------------------------------
// Assign UART2:
HardwareSerial MySerial(1);                                                       // Creating structure to handle UART 1.
// Creating ESP timer handling structures:
esp_timer_handle_t timer1_handle;                                                 // Handle for the first timer.
esp_timer_handle_t timer2_handle;                                                 // Handle for the second timer.
//-----------------------------------------------------------------------------------
// Defining the used variables in this sketch:
const unsigned int ENA = 21;                                                      // Choosing this pin to generate PWM on wheel 1.
const unsigned int IN1 = 47;                                                      // Choosing this pin to set the turning sense on wheel 1.
const unsigned int IN2 = 48;                                                      // Choosing this pin to set the turning sense on wheel 1.
const unsigned int ENB = 45;                                                      // Choosing this pin to generate PWM on wheel 2.
const unsigned int IN3 = 35;                                                      // Choosing this pin to set the turning sense on wheel 2.
const unsigned int IN4 = 0;                                                       // Choosing this pin to set the turning sense on wheel 2.
const unsigned int ENC = 36;                                                      // Choosing this pin to generate PWM on wheel 3.
const unsigned int IN5 = 37;                                                      // Choosing this pin to set the turning sense on wheel 3.
const unsigned int IN6 = 38;                                                      // Choosing this pin to set the turning sense on wheel 3.
const unsigned int RST = 46;                                                      // RST pin of the XBee USB adapter is connected to a GPIO pin on your microcontroller for reset the XBee module.
const unsigned int Q1A = 14;                                                      // Choosing this pin for encoder's channel A on wheel 1.
const unsigned int Q1B = 13;                                                      // Choosing this pin for encoder's channel B on wheel 1.
const unsigned int Q2A = 12;                                                      // Choosing this pin for encoder's channel A on wheel 2.
const unsigned int Q2B = 11;                                                      // Choosing this pin for encoder's channel B on wheel 2.
const unsigned int Q3A = 10;                                                      // Choosing this pin for encoder's channel A on wheel 3.
const unsigned int Q3B = 9;                                                       // Choosing this pin for encoder's channel B on wheel 3.
const unsigned int RXD1 = 18;                                                     // Choosing this pin as UART 1 receiving data.
const unsigned int TXD1 = 17;                                                     // Choosing this pin as UART 1 transmitting data.
const unsigned int bufferSize_str = 64;                                           // buffer length for characters string.
int Ibuff = 0x00;                                                                 // Index: next char in character-chain.
int direction_1 = 0;                                                              // Variable to save the turning direction of wheel 1.
int direction_2 = 0;                                                              // Variable to save the turning direction of wheel 2.
int direction_3 = 0;                                                              // Variable to save the turning direction of wheel 3.
volatile int flagcommand_1;                                                       // Available flag command 1.
volatile int flagcommand_2;                                                       // Available flag command 2.
volatile unsigned int counterflag_1 = 0;                                          // Defined flag for encoder of wheel 1.
volatile unsigned int counterflag_2 = 0;                                          // Defined flag for encoder of wheel 2.
volatile unsigned int counterflag_3 = 0;                                          // Defined flag for encoder of wheel 3.
volatile int long counter_1 = 0;                                                  // Counter of signal A status on encoder of wheel 1.
volatile int long counter_2 = 0;                                                  // Counter of signal B status on encoder of wheel 1.
volatile int long counter_3 = 0;                                                  // Counter of signal A status on encoder of wheel 2.
volatile int long counter_4 = 0;                                                  // Counter of signal B status on encoder of wheel 2.
volatile int long counter_5 = 0;                                                  // Counter of signal A status on encoder of wheel 3.
volatile int long counter_6 = 0;                                                  // Counter of signal B status on encoder of wheel 3.
volatile int long counter_7 = 0;                                                  // Time out counter.
unsigned int long pulsetime_1 = 0;                                                // Variable to save pulse time a for encoder of wheel 1.
unsigned int long pulsetime_2 = 0;                                                // Variable to save pulse time a for encoder of wheel 2.
unsigned int long pulsetime_3 = 0;                                                // Variable to save pulse time a for encoder of wheel 3.
char datoO[8], datoP[8], datoQ[8];                                                // Character vectors.
char ControlSignals[64];                                                          // Variable to save all the control signal values.
char angular_velocities[32];                                                      // Variable to save the angular velocities of robot wheels.
char chain[bufferSize_str];                                                       // Reception buffer.
char character;                                                                   // Variable to save received character by UART module.
float Control_1;                                                                  // Variable to save received control signal value from UART module (u_1).
float Control_2;                                                                  // Variable to save received control signal value from UART module (u_2).
float Control_3;                                                                  // Variable to save received control signal value from UART module (u_3).
volatile double ang_vel_1 = 0.0;                                                  // Angular velocity in rad/s of wheel 1.
volatile double ang_vel_2 = 0.0;                                                  // Angular velocity in rad/s of wheel 2.
volatile double ang_vel_3 = 0.0;                                                  // Angular velocity in rad/s of wheel 3.
//-----------------------------------------------------------------------------------
// Putting function declarations here:
void add_2_cbuff(char c);                                                         // Declaration of add_2_cbuff function.
void init_cbuff(void);                                                            // Declaration of init_cbuff function.
void string2float();                                                              // Declaration of string2float function.
void MovingWheel_1(float value);                                                  // Declaration of MovingWheel_1 function.
void MovingWheel_2(float value);                                                  // Declaration of MovingWheel_2 function.
void MovingWheel_3(float value);                                                  // Declaration of MovingWheel_3 function.
void Timer1_Setup();                                                              // Declaration of Timer2_Setup function.
void Timer2_Setup();                                                              // Declaration of Timer3_Setup function.
void IRAM_ATTR Q1A_Interrupt();                                                   // Declaration of Q1A_Interrupt function.
void IRAM_ATTR Q1B_Interrupt();                                                   // Declaration of Q1B_Interrupt function.
void IRAM_ATTR Q2A_Interrupt();                                                   // Declaration of Q2A_Interrupt function.
void IRAM_ATTR Q2B_Interrupt();                                                   // Declaration of Q2B_Interrupt function.
void IRAM_ATTR Q3A_Interrupt();                                                   // Declaration of Q3A_Interrupt function.
void IRAM_ATTR Q3B_Interrupt();                                                   // Declaration of Q3B_Interrupt function.
void onTimer1(void* arg);                                                         // Declaration of onTimer1 interrupt function.
void onTimer2(void* arg);                                                         // Declaration of onTimer2 interrupt function.
//-----------------------------------------------------------------------------------
// Callback function for the Timer 1 to 10 Hz:
void onTimer1(void* arg){
  // Packing and streaming the angular velocities of this OMR:
  sprintf(angular_velocities,":1,%1.3f,%1.3f,%1.3f;",ang_vel_1,ang_vel_2,ang_vel_3);
  if(flagcommand_2 == 1){
    MySerial.println(angular_velocities);                                         // Print angular velocities via UART 2 peripheral (only on Optitrack mode).
    if(counter_7 >= 12 && counter_7 < 18){
      MovingWheel_1(0.0f);                                                        // Calling function that moves wheel 1 at certain desired angular velocity (turn motion off for omni wheel 1).
      MovingWheel_2(0.0f);                                                        // Calling function that moves wheel 2 at certain desired angular velocity (turn motion off for omni wheel 2).
      MovingWheel_3(0.0f);                                                        // Calling function that moves wheel 3 at certain desired angular velocity (turn motion off for omni wheel 3).
      counter_7++;                                                                // Increasing counter 7.
    }
    else if(counter_7 >= 40){
      flagcommand_2 = 0;                                                          // Reset flag command 2.
      counter_7 = 0;                                                              // Reset 7th counter.
    }
    else counter_7++;                                                             // Increasing counter 7.
  }
}
//-----------------------------------------------------------------------------------
// Callback function for the Timer 2 to 10 Hz:
void onTimer2(void* arg){
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
  pinMode(ENA,OUTPUT);                                                            // Configuring pin 21 as output.
  pinMode(IN1,OUTPUT);                                                            // Configuring pin 47 as output.
  pinMode(IN2,OUTPUT);                                                            // Configuring pin 48 as output.
  pinMode(ENB,OUTPUT);                                                            // Configuring pin 45 as output.
  pinMode(IN3,OUTPUT);                                                            // Configuring pin 35 as output.
  pinMode(IN4,OUTPUT);                                                            // Configuring pin 0 as output.
  pinMode(ENC,OUTPUT);                                                            // Configuring pin 36 as output.
  pinMode(IN5,OUTPUT);                                                            // Configuring pin 37 as output.
  pinMode(IN6,OUTPUT);                                                            // Configuring pin 38 as output.
  pinMode(RST,OUTPUT);                                                            // Configuring pin 46 as output.
  pinMode(Q1A,INPUT);                                                             // Configuring pin 14 as input.
  pinMode(Q1B,INPUT);                                                             // Configuring pin 13 as input.
  pinMode(Q2A,INPUT);                                                             // Configuring pin 12 as input.
  pinMode(Q2B,INPUT);                                                             // Configuring pin 11 as input.
  pinMode(Q3A,INPUT);                                                             // Configuring pin 10 as input.
  pinMode(Q3B,INPUT);                                                             // Configuring pin 09 as input.
  //---------------------------------------------------------------------------------
  // Enabling UART communications:
  // Initialize serial monitor (UART 0):
  Serial.begin(Baud_Rate);                                                        // Open a serial connection (UART 0).
  // Initialize second serial port (UART 2):
  MySerial.setRxBufferSize(bufferSize_uart);                                      // Standard Arduino has 64 bytes.
                                                                                  // ESP32 has 256 bytes.
                                                                                  // Call must come before begin().
  MySerial.begin(Baud_Rate,SERIAL_8N1,RXD1,TXD1);                                 // Open a serial connection (UART 1).
  digitalWrite(RST,HIGH);                                                         // Turn RST pin to HIGH for establishing UART communication with Xbee.
  init_cbuff();                                                                   // Clear buffer.
  //---------------------------------------------------------------------------------
  // Configuring MCPWMs:
  mcpwm_config_t pwm_config;                                                      // MCPWM structure for configuration parameters.
  pwm_config.frequency = PWMs_Frequency;                                          // Frequency = 1 KHz.
  pwm_config.cmpr_a = 0;                                                          // Duty cycle of PWMxA = 0
  pwm_config.cmpr_b = 0;                                                          // Duty cycle of PWMxB = 0
  pwm_config.counter_mode = MCPWM_UP_COUNTER;                                     // MCPWM configured with HIGH edge counter.
  pwm_config.duty_mode = MCPWM_DUTY_MODE_0;
  // Initialize PWMs:
  mcpwm_init(MCPWM_UNIT_0,MCPWM_TIMER_0,&pwm_config);                             // Configure PWM0A timer 0 with above settings.
  mcpwm_init(MCPWM_UNIT_0,MCPWM_TIMER_1,&pwm_config);                             // Configure PWM0A timer 1 with above settings.
  mcpwm_init(MCPWM_UNIT_0,MCPWM_TIMER_2,&pwm_config);                             // Configure PWM0A timer 1 with above settings.
  // Set the GPIO pins for PWMs output:
  mcpwm_gpio_init(MCPWM_UNIT_0,MCPWM0A,ENA);                                      // Setting pin ENA = 15 as MCPWM with channel 0A assigned.
  mcpwm_gpio_init(MCPWM_UNIT_0,MCPWM1A,ENB);                                      // Setting pin ENB = 16 as MCPWM with channel 1A assigned.
  mcpwm_gpio_init(MCPWM_UNIT_0,MCPWM2A,ENC);                                      // Setting pin ENC = 18 as MCPWM with channel 2A assigned.
  // Start the MCPWM modules:
  mcpwm_start(MCPWM_UNIT_0,MCPWM_TIMER_0);                                        // Start MCPWM module connected to ENA.
  mcpwm_start(MCPWM_UNIT_0,MCPWM_TIMER_1);                                        // Start MCPWM module connected to ENB.
  mcpwm_start(MCPWM_UNIT_0,MCPWM_TIMER_2);                                        // Start MCPWM module connected to ENC.
  //---------------------------------------------------------------------------------
  // Activate interrupts for counting pulses on attached encoders on robot's wheels:
  attachInterrupt(digitalPinToInterrupt(Q1A),Q1A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q1B),Q1B_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2A),Q2A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q2B),Q2B_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3A),Q3A_Interrupt,CHANGE);
  attachInterrupt(digitalPinToInterrupt(Q3B),Q3B_Interrupt,CHANGE);
  //---------------------------------------------------------------------------------
  // Enable Timer 1 interrupt at 10 Hz:
  Timer1_Setup();                                                                 // Call Timer 1 setup function.
  //---------------------------------------------------------------------------------
  // Enable Timer 2 interrupt at 10 Hz:
  Timer2_Setup();                                                                 // Call Timer 2 setup function.
  //---------------------------------------------------------------------------------
}
//-----------------------------------------------------------------------------------
// Setting Timer 2 and configuring its interruption function (at 10 Hz):
void Timer1_Setup(){
  // Timer 1 configuration:
  esp_timer_create_args_t timer1Config;
  timer1Config.callback = &onTimer1;                                              // Callback function for Timer 1.
  timer1Config.arg = NULL;                                                        // No arguments passed to callback.
  timer1Config.dispatch_method = ESP_TIMER_TASK;                                  // Execute in task context.
  timer1Config.name = "Timer1";                                                   // Name for debugging.
  // Creating the Timer 1:
  if(esp_timer_create(&timer1Config, &timer1_handle) != ESP_OK){
    Serial.println("Failed to create Timer 1");
    return;
    }
    // Start the Timer 1 to trigger every 0.1 seconds (100000 microseconds):
    if (esp_timer_start_periodic(timer1_handle, 100000) != ESP_OK){
      Serial.println("Failed to start Timer 1");
    }
}
//-----------------------------------------------------------------------------------
// Setting Timer 3 and configuring its interruption function (at 10 Hz):
void Timer2_Setup(){
  // Timer 2 configuration:
  esp_timer_create_args_t timer2Config;
  timer2Config.callback = &onTimer2;                                              // Callback function for Timer 2.
  timer2Config.arg = NULL;                                                        // No arguments passed to callback.
  timer2Config.dispatch_method = ESP_TIMER_TASK;                                  // Execute in task context.
  timer2Config.name = "Timer2";                                                   // Name for debugging.
  // Creating the Timer 2:
  if(esp_timer_create(&timer2Config, &timer2_handle) != ESP_OK){
    Serial.println("Failed to create Timer 2");
    return;
  }
  // Start the Timer 2 to trigger every 0.1 seconds (100000 microseconds):
    if (esp_timer_start_periodic(timer2_handle, 100000) != ESP_OK){
      Serial.println("Failed to start Timer 2");
    }
}
//-----------------------------------------------------------------------------------
// initializing buffer:
void init_cbuff(void){
  int i;
  flagcommand_1 = 0;                                                              // Reset value of flag command 1.
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
    flagcommand_1 = 1;
    break;
    case 0x0A:                                                                    // Line Feed 2 -> Enable flag.
    flagcommand_1 = 1;
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
  int i, j = 0, r = 0, s = 0, t = 0;                                              // Declaration of i, j, r, s and t as integer variables.
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
  float duty_cycle = PWMdc*100.0f/(float)(pow(2,PWMs_Resolution));                // Duty cycle value for MCPWM_OPR_A of MCPWM_TIMER_0.
  mcpwm_set_duty(MCPWM_UNIT_0,MCPWM_TIMER_0,MCPWM_OPR_A,duty_cycle);              // Set the duty cycle for PWM0A.
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
  float duty_cycle = PWMdc*100.0f/(float)(pow(2,PWMs_Resolution));                // Duty cycle value for MCPWM_OPR_A of MCPWM_TIMER_1.
  mcpwm_set_duty(MCPWM_UNIT_0,MCPWM_TIMER_1,MCPWM_OPR_A,duty_cycle);              // Set the duty cycle for PWM1A.
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
  float duty_cycle = PWMdc*100.0f/(float)(pow(2,PWMs_Resolution));                // Duty cycle value for MCPWM_OPR_A of MCPWM_TIMER_2.
  mcpwm_set_duty(MCPWM_UNIT_0,MCPWM_TIMER_2,MCPWM_OPR_A,duty_cycle);              // Set the duty cycle for PWM2A.
}
//-----------------------------------------------------------------------------------
// Interruption by change of signal A of encoder attached on wheel 1:
void IRAM_ATTR Q1A_Interrupt(){
  if(digitalRead(Q1A) == HIGH && digitalRead(Q1B) == HIGH){
    counter_1--;
    direction_1 = -1;                                                             // Wheel 1 is moving in counterclockwise direction.
    counterflag_1 = 1;
    pulsetime_1 = esp_timer_get_time();                                           // Get the current time when encoder signal Q1A triggers (in microseconds).
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
      pulsetime_1 = esp_timer_get_time() - pulsetime_1;                           // Get the current time again and differentiate to previous timing capture.
      ang_vel_1 = (direction_1*2.0*M_PI*1000000.0f)/(22.0*n_2*pulsetime_1);       // Computing angular velocity of wheel 1, in [rad/s] ((direction_1*2*PI)/(PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_1)).
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
    pulsetime_1 = esp_timer_get_time();                                           // Get the current time when encoder signal Q1B triggers (in microseconds).
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
      pulsetime_1 = esp_timer_get_time() - pulsetime_1;                           // Get the current time again and differentiate to previous timing capture.
      ang_vel_1 = (direction_1*2.0*M_PI*1000000.0f)/(22.0*n_2*pulsetime_1);       // Computing angular velocity of wheel 1, in [rad/s] ((direction_1*2*PI)/(PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_1)).
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
    pulsetime_2 = esp_timer_get_time();                                           // Get the current time when encoder signal Q2A triggers (in microseconds).
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
      pulsetime_2 = esp_timer_get_time() - pulsetime_2;                           // Get the current time again and differentiate to previous timing capture.
      ang_vel_2 = (direction_2*2.0*M_PI*1000000.0f)/(22.0*n_2*pulsetime_2);       // Computing angular velocity of wheel 2, in [rad/s] ((direction_2*2*PI)/(PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_2)).
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
    pulsetime_2 = esp_timer_get_time();                                           // Get the current time when encoder signal Q2B triggers (in microseconds).
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
      pulsetime_2 = esp_timer_get_time() - pulsetime_2;                           // Get the current time again and differentiate to previous timing capture.
      ang_vel_2 = (direction_2*2.0*M_PI*1000000.0f)/(22.0*n_2*pulsetime_2);       // Computing angular velocity of wheel 2, in [rad/s] ((direction_2*2*PI)/(PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_2)).
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
    pulsetime_3 = esp_timer_get_time();                                           // Get the current time when encoder signal Q3A triggers.
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
      pulsetime_3 = esp_timer_get_time() - pulsetime_3;                           // Get the current time again and differentiate to previous timing capture.
      ang_vel_3 = (direction_3*2.0*M_PI*1000000.0f)/(22.0*n_2*pulsetime_3);       // Computing angular velocity of wheel 3, in [rad/s] ((direction_3*2*PI)/(PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_3)).
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
    pulsetime_3 = esp_timer_get_time();                                           // Get the current time when encoder signal Q3B triggers.
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
      pulsetime_3 = esp_timer_get_time() - pulsetime_3;                           // Get the current time again and differentiate to previous timing capture.
      ang_vel_3 = (direction_3*2.0*M_PI*1000000.0f)/(22.0*n_2*pulsetime_3);       // Computing angular velocity of wheel 3, in [rad/s] ((direction_3*2*PI)/(PULSES_BY_REVOLUTION*GEAR_RELATIONSHIP*pulsetime_3)).
    }
  }
}
//-----------------------------------------------------------------------------------
void loop(){
  // Putting the main code here, to run repeatedly:
  int i, j;                                                                       // Declaration of i and j as integer variables.
  while(MySerial.available() > 0){
    character = 0x00;                                                           // Defining character.
    character = MySerial.read();                                                // Last received character.
    add_2_cbuff(character);                                                     // Adding character to data buffer assigned to UART 2 module.
  }
  // Taking values from UART 2 module:
  if(flagcommand_1 == 1){
    flagcommand_2 = 1;                                                          // Set flag command 2 to 1.
    counter_7 = 0;                                                              // Reset the 7th counter.
    string2float();                                                             // Call string2float() function.
    init_cbuff();                                                               // Clear buffer.
    MovingWheel_1(Control_1*d_th21_max/100.0f);                                 // Calling function that moves wheel 1 at certain desired angular velocity.
    MovingWheel_2(Control_2*d_th22_max/100.0f);                                 // Calling function that moves wheel 2 at certain desired angular velocity.
    MovingWheel_3(Control_3*d_th23_max/100.0f);                                 // Calling function that moves wheel 3 at certain desired angular velocity.
  }
  else NOP();                                                                   // No operation cycle.
  delayMicroseconds(2);                                                         // 2 microseconds delay.
}
