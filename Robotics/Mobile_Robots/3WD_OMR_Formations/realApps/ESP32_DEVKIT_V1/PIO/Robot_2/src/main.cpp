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
// Including libraries to the program:
#include <Arduino.h>
#include <Ps3Controller.h>
#include <HardwareSerial.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include "driver/mcpwm.h"
#include "3WD_OMRs_Controllers.h"
//-----------------------------------------------------------------------------------
// Assign UART2:
HardwareSerial MySerial(1);
//-----------------------------------------------------------------------------------
// Defining the used variables in this sketch:
uint8_t new_mac[8] = {0xc0,0x14,0x3d,0x63,0x9e,0xca};                             // MAC address stored in PS3 controller.
const unsigned int RXD2 = 16;                                                     // Choosing this pin as UART 2 receiving data.
const unsigned int TXD2 = 17;                                                     // Choosing this pin as UART 2 transmitting data.
const unsigned int ENA = 15;                                                      // Choosing this pin to generate PWM on wheel 1.
const unsigned int IN1 = 02;                                                      // Choosing this pin to set the turning sense on wheel 1.
const unsigned int IN2 = 04;                                                      // Choosing this pin to set the turning sense on wheel 1.
const unsigned int ENB = 05;                                                      // Choosing this pin to generate PWM on wheel 2.
const unsigned int IN3 = 19;                                                      // Choosing this pin to set the turning sense on wheel 2.
const unsigned int IN4 = 18;                                                      // Choosing this pin to set the turning sense on wheel 2.
const unsigned int ENC = 21;                                                      // Choosing this pin to generate PWM on wheel 3.
const unsigned int IN5 = 22;                                                      // Choosing this pin to set the turning sense on wheel 3.
const unsigned int IN6 = 23;                                                      // Choosing this pin to set the turning sense on wheel 3.
const unsigned int RST = 33;                                                      // RST pin of the XBee USB adapter is connected to a GPIO pin on your microcontroller for reset the XBee module.
const unsigned int Q1A = 13;                                                      // Choosing this pin for encoder's channel A on wheel 1.
const unsigned int Q1B = 12;                                                      // Choosing this pin for encoder's channel B on wheel 1.
const unsigned int Q2A = 14;                                                      // Choosing this pin for encoder's channel A on wheel 2.
const unsigned int Q2B = 27;                                                      // Choosing this pin for encoder's channel B on wheel 2.
const unsigned int Q3A = 26;                                                      // Choosing this pin for encoder's channel A on wheel 3.
const unsigned int Q3B = 25;                                                      // Choosing this pin for encoder's channel B on wheel 3.
const unsigned int bufferSize_str = 64;                                           // buffer length for characters string.
int Ibuff = 0x00;                                                                 // Index: next char in character-chain.
int flagcommand_1 = 0;                                                            // Available flag command 1.
int flagcommand_2 = 0;                                                            // Available flag command 2.
int direction_1 = 0;                                                              // Variable to save the turning direction of wheel 1.
int direction_2 = 0;                                                              // Variable to save the turning direction of wheel 2.
int direction_3 = 0;                                                              // Variable to save the turning direction of wheel 3.
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
char character;                                                                   // Variable to save received character by UART 2 module.
char datoO[8], datoP[8], datoQ[8];                                                // Character vectors.
char chain[bufferSize_str];                                                       // Reception buffer.
char ControlSignals[64];                                                          // Variable to save all the control signal values.
char angular_velocities[32];                                                      // Variable to save the angular velocities of robot wheels.
char PS3_analog_data[64];                                                         // Char variable array to save instantaneous button manipulation of PS3 controller.
float Control_1;                                                                  // Variable to save received control signal value from UART module (u_1).
float Control_2;                                                                  // Variable to save received control signal value from UART module (u_2).
float Control_3;                                                                  // Variable to save received control signal value from UART module (u_3).
float r1_Control_1;                                                               // Variable to save control signal value of OMR 1 (u_1 from PS3 Controller).
float r1_Control_2;                                                               // Variable to save control signal value of OMR 1 (u_2 from PS3 Controller).
float r1_Control_3;                                                               // Variable to save control signal value of OMR 1 (u_3 from PS3 Controller).
volatile double ang_vel_1 = 0.0;                                                  // Angular velocity in rad/s of wheel 1.
volatile double ang_vel_2 = 0.0;                                                  // Angular velocity in rad/s of wheel 2.
volatile double ang_vel_3 = 0.0;                                                  // Angular velocity in rad/s of wheel 3.
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
void setup(){
  // Putting setup code here, to run once:
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
  pinMode(RST,OUTPUT);                                                            // Configuring pin 33 as output.
  pinMode(Q1A,INPUT);                                                             // Configuring pin 13 as input.
  pinMode(Q1B,INPUT);                                                             // Configuring pin 12 as input.
  pinMode(Q2A,INPUT);                                                             // Configuring pin 14 as input.
  pinMode(Q2B,INPUT);                                                             // Configuring pin 27 as input.
  pinMode(Q3A,INPUT);                                                             // Configuring pin 26 as input.
  pinMode(Q3B,INPUT);                                                             // Configuring pin 25 as input.
  //---------------------------------------------------------------------------------
  // Enabling UART communications:
  // Initialize serial monitor (UART 0):
  Serial.begin(Baud_Rate);                                                        // Open the standard serial connection to UART 0.
  // Initialize second serial port (UART 2):
  MySerial.setRxBufferSize(bufferSize_uart);                                      // Standard Arduino has 64 bytes.
                                                                                  // ESP32 has 256 bytes.
                                                                                  // Call must come before begin().
  MySerial.begin(Baud_Rate,SERIAL_8N1,RXD2,TXD2);                                 // Open serial connection to UART 2.
  digitalWrite(RST,HIGH);                                                         // Turn RST pin to HIGH for establishing UART communication with Xbee.
  init_cbuff();                                                                   // Clear buffer.
  //---------------------------------------------------------------------------------
  // Configuring PS3 controller:
  ps3SetBluetoothMacAddress(new_mac);                                             // Setting MAC address for PS3 controller.
  Ps3.begin("c0:14:3d:63:9e:ca");                                                 // Enable PS3 controller communication.
  Serial.println("PS3 Controller is --Ready.");                                   // Print to indicate successful connection.
  //---------------------------------------------------------------------------------
  // Configuring MCPWMs:
  // mcpwm_config_t pwm_config;                                                      // MCPWM structure for configuration parameters.
  // pwm_config.frequency = PWMs_Frequency;                                          // Frequency = 5 KHz.
  // pwm_config.cmpr_a = 0;                                                          // Duty cycle of PWMxA = 0
  // pwm_config.cmpr_b = 0;                                                          // Duty cycle of PWMxB = 0
  // pwm_config.counter_mode = MCPWM_UP_COUNTER;
  // pwm_config.duty_mode = MCPWM_DUTY_MODE_0;
  // Initialize PWMs:
  // mcpwm_init(MCPWM_UNIT_0,MCPWM_TIMER_0,&pwm_config);                             // Configure PWM0A timer 0 with above settings.
  // mcpwm_init(MCPWM_UNIT_0,MCPWM_TIMER_1,&pwm_config);                             // Configure PWM0A timer 1 with above settings.
  // mcpwm_init(MCPWM_UNIT_0,MCPWM_TIMER_2,&pwm_config);                             // Configure PWM0A timer 1 with above settings.
  // Set the GPIO pins for PWMs output:
  // mcpwm_gpio_init(MCPWM_UNIT_0,MCPWM0A,ENA);                                      // Setting pin ENA = 15 as MCPWM with channel 0A assigned.
  // mcpwm_gpio_init(MCPWM_UNIT_0,MCPWM1A,ENB);                                      // Setting pin ENB = 16 as MCPWM with channel 1A assigned.
  // mcpwm_gpio_init(MCPWM_UNIT_0,MCPWM2A,ENC);                                      // Setting pin ENC = 18 as MCPWM with channel 2A assigned.
  // Start the MCPWM modules:
  // mcpwm_start(MCPWM_UNIT_0,MCPWM_TIMER_0);                                        // Start MCPWM module connected to ENA.
  // mcpwm_start(MCPWM_UNIT_0,MCPWM_TIMER_1);                                        // Start MCPWM module connected to ENB.
  // mcpwm_start(MCPWM_UNIT_0,MCPWM_TIMER_2);                                        // Start MCPWM module connected to ENC.
  //---------------------------------------------------------------------------------
  // Configuring LEDC PWMs:
  ledcAttachPin(ENA,PWM_Channel_0);                                               // Setting pin ENA = 15 as PWM signal with PWM channel 0 assigned.
  ledcSetup(PWM_Channel_0,PWMs_Frequency,PWMs_Resolution);                        // Setting frequency and resolution of PWM signal of channel 0.
  ledcAttachPin(ENB,PWM_Channel_1);                                               // Setting pin ENB = 16 as PWM signal with PWM channel 1 assigned.
  ledcSetup(PWM_Channel_1,PWMs_Frequency,PWMs_Resolution);                        // Setting frequency and resolution of PWM signal of channel 1.
  ledcAttachPin(ENC,PWM_Channel_2);                                               // Setting pin ENC = 18 as PWM signal with PWM channel 2 assigned.
  ledcSetup(PWM_Channel_2,PWMs_Frequency,PWMs_Resolution);                        // Setting frequency and resolution of PWM signal of channel 2.
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
  Timer3_Setup();                                                                 // Call Timer3_setup function.
  //---------------------------------------------------------------------------------
}
//-----------------------------------------------------------------------------------
void loop(){
  // Putting the main code here, to run repeatedly:
  int i, j;                                                                       // Declaration of i and j as integer variables.
  if(Ps3.isConnected() || MySerial.available() > 0){
    while(MySerial.available() > 0){
      character = 0x00;                                                           // Defining first value of character.
      character = MySerial.read();                                                // Last received character.
      add_2_cbuff(character);                                                     // Adding character to data buffer assigned to UART 2 module.
    }
    // Taking values from UART 2 module:
    if(flagcommand_1 == 1 && !Ps3.isConnected()){
      flagcommand_2 = 1;                                                          // Set flag command 2 to 1.
      string2float();                                                             // Call string2float() function.
      init_cbuff();                                                               // Clear buffer.
      MovingWheel_1(Control_1*d_th21_max/100.0f);                                 // Calling function that moves wheel 1 at certain desired angular velocity.
      MovingWheel_2(Control_2*d_th22_max/100.0f);                                 // Calling function that moves wheel 2 at certain desired angular velocity.
      MovingWheel_3(Control_3*d_th23_max/100.0f);                                 // Calling function that moves wheel 3 at certain desired angular velocity.
    }
    else if(Ps3.isConnected()){
      // Reseting start indicator:
      if(flagcommand_2 == 1){
        init_cbuff();                                                             // Clear buffer.
        flagcommand_2 = 0;                                                        // Reset flag command 2.
      }
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
      sprintf(ControlSignals,":2,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f;",r1_Control_1,r1_Control_2,r1_Control_3,Control_1,Control_2,Control_3);
      MySerial.println(ControlSignals);                                           // Print computed control signals via UART 2.
      // Serial.println(ControlSignals);                                             // Print computed control signals via UART 1 (to check correct functionality).
    }
    else NOP();                                                                   // No operation cycle.
  }
  delayMicroseconds(2);                                                           // 2 microseconds delay.
}
//-----------------------------------------------------------------------------------
// Putting function definitions here:
//-----------------------------------------------------------------------------------
// Initializing buffer:
void init_cbuff(void){
  int i;                                                                          // Declaration of i as integer variable.
  flagcommand_1 = 0;                                                              // Reset flag command state to 0.
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
  int PWMdc;                                                                      // Declaration of PWMdc as integer variable.
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
  // float duty_cycle = PWMdc*100.0/PWMs_Resolution_Value;                           // Duty cycle value for MCPWM_OPR_A of MCPWM_TIMER_0.
  // mcpwm_set_duty(MCPWM_UNIT_0,MCPWM_TIMER_0,MCPWM_OPR_A,duty_cycle);              // Set the duty cycle for PWM0A.
  // mcpwm_update_duty(MCPWM_UNIT_0,MCPWM_TIMER_0,MCPWM_OPR_A);                      // Update the duty cycle PWM0A to apply changes.
  ledcWrite(PWM_Channel_0,PWMdc);                                                 // Setting duty cycle value in PWM of wheel 1 (5 Khz).
}
//-----------------------------------------------------------------------------------
// Motion generation for wheel 2 (according to control signal):
void MovingWheel_2(float value){
  int PWMdc;                                                                      // Declaration of PWMdc as integer variable.
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
  // float duty_cycle = PWMdc*100.0/65535.0;                                         // Duty cycle value for MCPWM_OPR_A of MCPWM_TIMER_1.
  // mcpwm_set_duty(MCPWM_UNIT_0,MCPWM_TIMER_1,MCPWM_OPR_A,duty_cycle);              // Set the duty cycle for PWM1A.
  // mcpwm_update_duty(MCPWM_UNIT_0,MCPWM_TIMER_1,MCPWM_OPR_A);                      // Update the duty cycle PWM1A to apply changes.
  ledcWrite(PWM_Channel_1,PWMdc);                                                 // Setting duty cycle value in PWM of wheel 2 (5 Khz).
}
//-----------------------------------------------------------------------------------
// Motion generation for wheel 3 (according to control signal):
void MovingWheel_3(float value){
  int PWMdc;                                                                      // Declaration of PWMdc as integer variable.
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
  // float duty_cycle = PWMdc*100.0/65535.0;                                         // Duty cycle value for MCPWM_OPR_A of MCPWM_TIMER_2.
  // mcpwm_set_duty(MCPWM_UNIT_0,MCPWM_TIMER_2,MCPWM_OPR_A,duty_cycle);              // Set the duty cycle for PWM2A.
  // mcpwm_update_duty(MCPWM_UNIT_0,MCPWM_TIMER_2,MCPWM_OPR_A);                      // Update the duty cycle PWM2A to apply changes.
  ledcWrite(PWM_Channel_2,PWMdc);                                                 // Setting duty cycle value in PWM of wheel 3 (5 Khz).
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
// Setting Timer 2 and configuring its interruption function (at 10 Hz):
void Timer2_Setup(){
  uint16_t PRS = 2;                                                               // Prescaler selected for Timer 2.
  uint32_t TICKS = 4E6;                                                           // Timer ticks for ensuring interruption each .1 seconds.
  Timer2_Cfg = timerBegin(2,PRS,true);                                            // Enabling Timer 2 with (Frequency = APB_CLK/(TICKS*PRS)), and Counter working by count up.
  timerAttachInterrupt(Timer2_Cfg,&Timer2_ISR,true);                              // Attaches the Timer 2 interrupt event with a desired ISR_Handler callback function (Timer2_ISR), that will be executed periodically.
  timerAlarmWrite(Timer2_Cfg,TICKS,true);                                         // Configures the Timer 2 Interrupt with an auto-reloaded Time Period of 1 second due to TICKS value.
  timerAlarmEnable(Timer2_Cfg);                                                   // Enables the Timer 2 Alarm (or Interrupt).
}
//-----------------------------------------------------------------------------------
// Setting Timer 3 and configuring its interruption function (at 10 Hz):
void Timer3_Setup(){
  uint16_t PRS = 2;                                                               // Prescaler selected for Timer 3.
  uint32_t TICKS = 4E6;                                                           // Timer ticks for ensuring interruption each .1 seconds.
  Timer3_Cfg = timerBegin(3,PRS,true);                                            // Enabling Timer 3 with (Frequency = APB_CLK/(TICKS*PRS)), and Counter working by count up.
  timerAttachInterrupt(Timer3_Cfg,&Timer3_ISR,true);                              // Attaches the Timer 3 interrupt event with a desired ISR_Handler callback function (Timer3_ISR), that will be executed periodically.
  timerAlarmWrite(Timer3_Cfg,TICKS,true);                                         // Configures the Timer 3 Interrupt with an auto-reloaded Time Period of 1 second due to TICKS value.
  timerAlarmEnable(Timer3_Cfg);                                                   // Enables the Timer 3 Alarm (or Interrupt).
}
//-----------------------------------------------------------------------------------
// Timer 2 interrupt at 10 Hz:
void IRAM_ATTR Timer2_ISR(){
  // Packing and streaming the angular velocities of this OMR:
  sprintf(angular_velocities,":1,%1.3f,%1.3f,%1.3f;",ang_vel_1,ang_vel_2,ang_vel_3);
  if(!Ps3.isConnected() && flagcommand_2 == 1){
    MySerial.println(angular_velocities);                                         // Print angular velocities by serial peripheral.
    flagcommand_2 = 0;                                                            // Reset flag command 2.
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
