/* This program was made for intended to control two OMRs through ADRC and CS_ADRC robust control systems.
Unfortunately ChipKit WF32 with ARDUINO framework does not work appropriately.*/
// ChipKit WF32 works to 80 Mhz...
  //---------------------------------------------------------------------------------------------------------------
// Defining mathematical values:
#define _USE_MATH_DEFINES
// Defining configuration values:
#define FPB 80E6                                                        // Peripheral bus clock (PBCLK) frequency.
#define desired_baudrate_1 20E5                                         // Desired baud rate for communication via UART 1 module.
#define desired_baudrate_4 115200                                       // Desired baud rate for communication via UART 4 module.
#define prescaler_3 16                                                  // Prescaler for the ticks of Timer 3.
#define freq_hz_3 160                                                   // Frequency in Hz for instructions execution of Timer 3.
#define prescaler_4 16                                                  // Prescaler for the ticks of Timer 4.
#define freq_hz_4 80                                                    // Frequency in Hz for instructions execution of Timer 4.
#define prescaler_5 256                                                 // Prescaler for the ticks of Timer 5.
#define freq_hz_5 10                                                    // Frequency in Hz for instructions execution of Timer 5.
#define ticks_per_second 80E6                                           // Ticks per seconds of machine's clock.
#define exe_minutes 9                                                   // Run time minutes.
#define NOP __asm__ __volatile__ ("nop\n\t")                            // Nop instruction (asm).
//---------------------------------------------------------------------------------------------------------------
// Including libraries to the program:
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <xc.h>                                                         // Include device-specific headers if needed.
#include <float.h>
#include <SD.h>
#include "src\baqumau\baqumau.h"                                        // My library.
#include "src\baqumau\3WD_OMRs_Controllers.h"                           // Controllers library.
#include "src\baqumau\3WD_OMRs_References.h"                            // References library.
//---------------------------------------------------------------------------------------------------------------
// Creating a file:
File baqumau;
// Default SD chip select for ChipKit WF32 devices:
const unsigned int chipSelect_SD_default = 51;                          // Selecting the correct pin for ChipKit WF32.
const unsigned int chipSelect_SD = chipSelect_SD_default;
//---------------------------------------------------------------------------------------------------------------
// Choosing pin that commands the reset of Xbee device:
const unsigned int RST = 38;                                            // RST pin of the XBee USB adapter is connected to a GPIO pin on your microcontroller for reset the XBee module.
//---------------------------------------------------------------------------------------------------------------
// Defining the variables used in this sketch:
const unsigned int bufferSize = 128;                                    // buffer length.
unsigned long final_iteration = 60*exe_minutes*freq_hz_4;               // Final iteration of program execution (by default: 4 minutes at "freq_hz_4" in Hz).
volatile bool flagcommand_0 = false;                                    // Available flag command 0.
volatile bool flagcommand_1 = false;                                    // Available flag command 1 (Auxiliary flag for time out protocole).
volatile bool flagcommand_5 = false;                                    // Available flag command 5.
volatile uint16_t counter_1 = 0;                                        // Time out counter.
volatile uint32_t counter_4 = 0;                                        // Interrupts counter (Timer 4).
volatile uint32_t counter_5 = 0;                                        // Interrupts counter (Timer 5).
volatile uint32_t iterations = 0;                                       // Iterations counter in the program.
char character_1;                                                       // Variable to save received character from UART 1.
char character_4;                                                       // Variable to save received character from UART 4.
char controlSignals[bufferSize];                                        // Variable to save control signals data and subsequently send via UART 4 module.
char measurements[bufferSize];                                          // Variable to arrange the measured variables.
enum Control_System consys = ADRC_RS;                                   // Declare the control system type.
enum Reference_Type reftype = MINGYUE_01;                               // Declare the reference shape type.
float errors_k[3*Robots_Qty] = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};    // Declaration of this floating-point values vector for arranging error variables.
//---------------------------------------------------------------------------------------------------------------
// Configuring the ADRC_RS strategy:
const float sampleTime = 1.0f/freq_hz_4;                                // Float parameter to define sample time of observer RSO.
const float epsilon = .42f;                                             // Small constant used in the RSO observer.
// Float parameters to define the observer gains of RSO, for RS ADRC:
float rso_Gains[9*Robots_Qty][3*Robots_Qty] = {
  {18.4091f,     0.0f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f, 18.4091f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f,  10.125f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f, 18.4091f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f, 18.4091f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f,     0.0f,  10.125f},         // Setting alpha_1.
  {75.3099f,     0.0f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f, 75.3099f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f, 22.7812f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f, 75.3099f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f, 75.3099f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f,     0.0f, 22.7812f},         // Setting alpha_2.
  {68.4636f,     0.0f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f, 68.4636f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f, 11.3906f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f, 68.4636f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f, 68.4636f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f,     0.0f, 11.3906f}          // Setting alpha_3.
};
// Float parameters to define the GPI controller gains of RS ADRC:
float gpi_Gains[3*Robots_Qty][3] = {
  {41.4770f, 53.9201f, 15.5769f},
  {41.4770f, 53.9201f, 15.5769f},
  {68.4636f, 75.3099f, 18.4091f},
  {41.4770f, 53.9201f, 15.5769f},
  {41.4770f, 53.9201f, 15.5769f},
  {68.4636f, 75.3099f, 18.4091f}                                        // Defining lambda_0[3*Robots_Qty], lambda_1[3*Robots_Qty] and lambda_2[3*Robots_Qty].
};
float t_cl = 0.0f;                                                      // Clutch interval time.
//---------------------------------------------------------------------------------------------------------------
// Configuring the SMC_CS strategy:
// Float parameters to define the observer gains of CSO, for CS SMC:
float cso_Gains[3*(Robots_Qty-1)][Robots_Qty-1] = {
  {18.4091f},                                                           // Setting alpha_1.
  {75.3099f},                                                           // Setting alpha_2.
  {68.4636f}                                                            // Setting alpha_3.
};
// Float parameters to define the sliding gains of SLS, for CS SMC:
// -- Setting Gamma and Gamma_p1 (Internal anti-windup gain):
float sls_Gains[3*Robots_Qty+1] = {1.54f, 1.54f, 1.68f, 1.57f, 1.68f, 1.68f, 22.0f};
// Defining the SMC gains that cover the unmodelled disturbances via SMC strategy:
float sms_Gains[3*Robots_Qty] = {1.44f, 1.44f, 1.44f, 1.44f, 1.44f, 1.44f};
// Defining the constants for boundidng the input torque disturbances according to SMC strategy:
float rho_1 = (3.0f/4.0f)*mt_1*l_1*l_1/(r_1*r_1);                       // Constant for bounding the input torque distrubances in robot 1.
float rho_2 = (3.0f/4.0f)*mt_2*l_2*l_2/(r_2*r_2);                       // Constant for bounding the input torque distrubances in robot 2.
float dis_Values[3*Robots_Qty] = {rho_1, rho_1, rho_1, rho_2, rho_2, rho_2};
float unc_Values[4] = {0.25f, 0.05f, 0.05f, 0.25f};                     // Define the constants for bounding the uncertainties in the model.
// Defining the saturation values of sliding surfaces at the output:
float sls_satVals[3*Robots_Qty] = {280.0f, 280.0f, 9.5f, 150.0f, 9.5f, 9.5f};
float diff_fc = 45.0f;                                                  // Assigning an arbitrary value to the filter coefficient of CSO internal differentiator.
float diff_pg[3] = {5.3f, 14.1f, 9.8f};                                 // Values assigned as the performance coefficients of HOSM-based differentiator within CSO structure (variant x).
float diff_lc[6] = {30.0f, 30.0f, 0.15f, 60.0f, 0.15f, 0.15f};          // Values assigned as the Lipschitz design constants of HOSM-based differentiator within CSO structure (variant x).
//---------------------------------------------------------------------------------------------------------------
// Creating data structure for UART 1 peripheral:
Data_Struct UART1 = createDataStruct(bufferSize,1,3*Robots_Qty,16);
// Creating data structure for UART 4 peripheral:
Data_Struct UART4 = createDataStruct(bufferSize,2,3,16);
// Creating data structure for a high-gain observer in the robot space:
RS_Observer RSO = createRS_Observer(sampleTime,rso_Gains,epsilon);
// Creating data structure for a high-gain observer in the cluster space:
CSx_Observer CSO = createCSx_Observer01(sampleTime,cso_Gains,epsilon,diff_pg,diff_lc);
// Creating data structure for a GPI controller in the robot space:
GPI_Controller GPI = createGPI_Controller(sampleTime,gpi_Gains);
// Creating data structure for the sliding surfaces in the cluster space:
Sl_Surfaces SLS = createSlidingSurfaces(sampleTime,sls_Gains,sls_satVals);
// Creating data structure for an ADRC controller in the robot space:
ADRC_Controller ADRC = createADRC_Controller();
// Creating data structure for a SMC technique in the cluster space:
SMC_Controller SMC = createSMC_Controller(sms_Gains,unc_Values,dis_Values,sls_Gains,epsilon);
// Creating data structure for the reference builder system:
Reference REF = createReference(sampleTime,reftype);                    // Create reference structure.
// Creating a robot formation structure for arranging their relevant variables:
Formation FMR = createFormation(Robots_Qty);                            // Create the OMRs formation structure.
//---------------------------------------------------------------------------------------------------------------
// Timer 3 interrupt (160 Hz):
void __attribute__((interrupt)) Timer_3_Handler(){
  IFS0CLR = 0x00001000;                                                 // Clear the Timer 3 interrupt status flag.
  if(iterations <= final_iteration) Serial.println(":9");               // Command sent to MATLAB to start or continue with linked streaming.
  else NOP;                                                             // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// Configuring Timer 3 to generate timer interrupts:
void start_timer_3_interrupt(){
  uint16_t period = ticks_per_second/(prescaler_3*freq_hz_3);           // Setting interrupt period calculated in ticks.
  T3CON = 0x0;                                                          // Stop 16-bit Timer 3 and clear control register.
  T3CONSET = 0x0040;                                                    // Enable 16-bit mode, prescaler at 1:16.
  TMR3 = 0x0;                                                           // Clear timer register.
  PR3 = period;                                                         // Setting the period on Timer 3.
  setIntVector(_TIMER_3_VECTOR,Timer_3_Handler);                        // Setting interruption vector for Timer 3.
  IPC3SET = 0x00000012;                                                 // Set interrupt priority of Timer 3 to nivel 4, and sub-priority to nivel 2.
  IFS0CLR = 0x00001000;                                                 // Clear the Timer 3 interrupt status flag.
  IEC0SET = 0x00001000;                                                 // Enable Timer 3 interrupt.
  T3CONSET = 0x8000;                                                    // Start the Timer 3.
}
//---------------------------------------------------------------------------------------------------------------
// Timer 4 interrupt (80 Hz):
void __attribute__((interrupt)) Timer_4_Handler(){
  IFS0CLR = 0x00010000;                                                 // Clear the Timer 4 interrupt status flag.
  int i;                                                                // Declaration of i as integer iteration variable.
  counter_4++;                                                          // Increasing the counter.
  iterations++;                                                         // Increasing execution iterations.
  if(counter_4 == freq_hz_4){
    digitalWrite(PIN_LED4,HIGH);                                        // Turn led 4 on (1 second).
  }
  else if(counter_4 == 2*freq_hz_4){
    counter_4 = 0;                                                      // Reset counter.
    digitalWrite(PIN_LED4,LOW);                                         // Turn led 4 off (1 second).
  }
  if(iterations <= final_iteration && flagcommand_0){
    //---------------------------------------------------------------------------------------------------------
    // Updating the state variables to current values:
    for(i = 0; i < 3*Robots_Qty; i++){
      FMR.q_k[i] = atof(UART1.MAT3.data[0][i]);                         // Saving pose of OMRs formation along global reference frame.
    }
    float angles_k[Robots_Qty] = {FMR.q_k[2], FMR.q_k[5]};              // Orientation vector in the robot space, obtained from streaming.
    angleConversion(FMR.CORq,angles_k);                                 // Compute angle conversion to the absolute domain.
    FMR.q_k[2] = FMR.CORq.y_k[0];                                       // Determines ph1(k).
    FMR.q_k[5] = FMR.CORq.y_k[1];                                       // Determines ph2(k).
    computeCSVariables(FMR);                                            // Compute the cluster space variables of FMR formation.
    //-----------------------------------------------------------------------------------------------------------
    // Computing the desired reference tracking-trajectories:
    // computeCircumference01(REF,consys,iterations);                      // Compute desired reference profiles for OMRs synchronization.
    computeInfinity01(REF,consys,iterations);                           // Compute desired reference profiles for OMRs synchronization.
    // computeStatical01(REF,consys);                                      // Compute desired reference profiles for OMRs synchronization.
    //-----------------------------------------------------------------------------------------------------------
    // Computing the designed control strategy:
    switch(consys){
      case ADRC_RS:{
        //--------------------------------------------ADRC_RS----------------------------------------------------
        // Estimation via High-gain Observer:
        RS_Estimation(RSO,FMR.u_k,FMR.q_k,FMR.params);                  // Estimates the OMRs formation output q(k), first derivative and disturbances.
        //-------------------------------------------------------------------------------------------------------
        // GPI control law, based on tracking error states:
        for(i = 0; i < 3*Robots_Qty; i++){
          errors_k[i] = RSO.y_k[i] - REF.y_k[i];                        // Computes error e(k) = q(k) - q*(k), where q*(k) are the pose tracking-trajectories.
        }
        computeGPIControl(GPI,errors_k);                                // Compute GPI control action.
        //-------------------------------------------------------------------------------------------------------
        // Computing ADRC RS strategy:
        computeADRC(ADRC,REF.y_k,RSO.y_k,GPI.y_k,FMR.params);           // Compute ADRC control action.
        //-------------------------------------------------------------------------------------------------------
        // Conditioning input torque control for OMRs formation:
        for(i = 0; i < 3; i++){
          FMR.u_k[i] = clutch(saturation(ADRC.y_k[i],-100.0f/ke_1,100.0f/ke_1),t_cl,sampleTime,iterations);
          FMR.v_k[i] = roundToThreeDecimals(FMR.u_k[i]*ke_1);
          FMR.u_k[i+3] = clutch(saturation(ADRC.y_k[i+3],-100.0f/ke_2,100.0f/ke_2),t_cl,sampleTime,iterations);
          FMR.v_k[i+3] = roundToThreeDecimals(FMR.u_k[i+3]*ke_2);
        }
        break;
      }
      case SMC_CS:{
        //---------------------------------------------SMC_CS----------------------------------------------------
        // Estimation via High-gain Observer:
        CSx_Estimation01(CSO,FMR.u_k,FMR.c_k,FMR.params);               // Estimates the OMRs formation output c(k), first derivative and disturbances.
        //-------------------------------------------------------------------------------------------------------
        // Computing the sliding surfaces required by SMC CS:
        compute_SlidingSurfaces(SLS,REF.y_k,FMR.c_k,CSO.y_k);           // Update to current values for sliding surfaces.
        //-------------------------------------------------------------------------------------------------------
        // Computing SMC CS strategy:
        computeSMC_Controller(SMC,REF.y_k,FMR.c_k,CSO.y_k,SLS.y_k,FMR.params);  // Update the current values for SMC CS strategy.
        //-------------------------------------------------------------------------------------------------------
        // Conditioning input torque control for OMRs formation:
        for(i = 0; i < 3; i++){
          FMR.u_k[i] = clutch(saturation(SMC.y_k[i],-100.0f/ke_1,100.0f/ke_1),t_cl,sampleTime,iterations);
          FMR.v_k[i] = roundToThreeDecimals(FMR.u_k[i]*ke_1);
          FMR.u_k[i+3] = clutch(saturation(SMC.y_k[i+3],-100.0f/ke_2,100.0f/ke_2),t_cl,sampleTime,iterations);
          FMR.v_k[i+3] = roundToThreeDecimals(FMR.u_k[i+3]*ke_2);
          //-----------------------------------------------------------------------------------------------------
          // Computing tracking errors states:
          errors_k[i] = FMR.q_k[i] - REF.x1_k[i];
          errors_k[i+3] = FMR.q_k[i+3] - REF.x1_k[i+3];
        }
        break;
      }
    }
    //-----------------------------------------------------------------------------------------------------------
    // Packing and streaming the control signals for OMRs formation:
    snprintf(controlSignals,sizeof(controlSignals),":0,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f;",FMR.v_k[0],FMR.v_k[1],FMR.v_k[2],FMR.v_k[3],FMR.v_k[4],FMR.v_k[5]);
    Serial1.println(controlSignals);                                    // Write control signals through UART 4.
  }
}
//---------------------------------------------------------------------------------------------------------------
// Configuring Timer 4 to generate timer interrupts:
void start_timer_4_interrupt(){
  uint16_t period = ticks_per_second/(prescaler_4*freq_hz_4);           // Setting interrupt period calculated in ticks.
  T4CON = 0x0;                                                          // Stop 16-bit Timer 4 and clear control register.
  T4CONSET = 0x0040;                                                    // Enable 16-bit mode, prescaler at 1:16.
  TMR4 = 0x0;                                                           // Clear timer register.
  PR4 = period;                                                         // Setting the period on Timer 4.
  setIntVector(_TIMER_4_VECTOR,Timer_4_Handler);                        // Setting interruption vector for Timer 4.
  IPC4SET = 0x00000009;                                                 // Set interrupt priority of Timer 4 to nivel 2, and sub-priority to nivel 1.
  IFS0CLR = 0x00010000;                                                 // Clear the Timer 4 interrupt status flag.
  IEC0SET = 0x00010000;                                                 // Enable Timer 4 interrupt.
  T4CONSET = 0x8000;                                                    // Start the Timer 4.
}
//---------------------------------------------------------------------------------------------------------------
// Timer 5 interrupt (10 Hz):
void __attribute__((interrupt)) Timer_5_Handler(){
  IFS0CLR = 0x00100000;                                                 // Clear the Timer 5 interrupt status flag.
  counter_5++;                                                          // Increasing the counter.
  if(counter_5 == freq_hz_5){
    digitalWrite(PIN_LED5,HIGH);                                        // Turn led 5 on 1 second.
  }
  else if(counter_5 == 2*freq_hz_5){
    counter_5 = 0;                                                      // Reset counter.
    digitalWrite(PIN_LED5,LOW);                                         // Turn led 5 off 1 second.
  }
  flagcommand_5 = true;                                                 // Setting flag 5 to true (Indicator for write on microSD).
}
//---------------------------------------------------------------------------------------------------------------
// Configuring Timer 5 to generate timer interrupts:
void start_timer_5_interrupt(){
  uint16_t period = ticks_per_second/(prescaler_5*freq_hz_5);           // Setting interrupt period calculated in ticks.
  T5CON = 0x0;                                                          // Stop 16-bit Timer 5 and clear control register.
  T5CONSET = 0x0070;                                                    // Enable 16-bit mode, prescaler at 1:256.
  TMR5 = 0x0;                                                           // Clear timer register.
  PR5 = period;                                                         // Setting the period on Timer 5.
  setIntVector(_TIMER_5_VECTOR,Timer_5_Handler);                        // Setting interruption vector for Timer 5.
  IPC5SET = 0x00000005;                                                 // Set interrupt priority of Timer 5 to nivel 1, and sub-priority to nivel 1.
  IFS0CLR = 0x00100000;                                                 // Clear the Timer 5 interrupt status flag.
  IEC0SET = 0x00100000;                                                 // Enable Timer 5 interrupt.
  T5CONSET = 0x8000;                                                    // Start the Timer 5.
}
//---------------------------------------------------------------------------------------------------------------
// Receiving data interrupt for UART 1 module:
void __attribute__((interrupt)) UART1_RX_Handler(){
  int i;                                                                // Declaration of i as index integer variable.
  digitalWrite(PIN_LED6,HIGH);                                          // Turn led 6 on.
  character_1 = U1RXREG;                                                // Variable to save received character by UART 1 module.
  add_2_charBuffer(&UART1,character_1);                                 // Adding character to data buffer assigned to UART 1 module.
  //-------------------------------------------------------------------------------------------------------------
  // Taking values from UART 1 module:
  // If streaming data is completely added to char buffer of UART1 struct:
  if(UART1.flag[1]){
    flagcommand_1 = true;                                               // Start to check the time out state for UART 1 receiving data.
    counter_1 = 0;                                                      // Reset counter 1.
    classify_charBuffer(&UART1);                                        // Classify data from assigned buffer to UART 1 structure data matrix. 
    init_charBuffer(&UART1);                                            // Initialize char-type data buffer associated to UART 1.
    digitalWrite(PIN_LED6,LOW);                                         // Turn led 6 off.
    if(!flagcommand_0){
      //---------------------------------------------------------------------------------------------------------
      // Saving initial state variables:
      for(i = 0; i < 3*Robots_Qty; i++){
        FMR.q_k[i] = atof(UART1.MAT3.data[0][i]);                       // Saving pose of OMRs formation along global reference frame.
      }
      float angles_k[Robots_Qty] = {FMR.q_k[2], FMR.q_k[5]};            // Initial orientation vector in the robot space.
      if(FMR.CORq.flag[0] == false){
        initAngleConverter(FMR.CORq,angles_k);                          // Initialize angle conversion to absolute domain in the robot space.
      }
      computeCSVariables(FMR);                                          // Compute the cluster space variables of FMR formation.
      //---------------------------------------------------------------------------------------------------------
      // Initializing the selected control system:
      switch(consys){
        case ADRC_RS:{
          //------------------------------------------ADRC_RS----------------------------------------------------
          // Float vector x_0 to define initial conditions for states of HGO observer in the robot space:
          float obs_x0[9*Robots_Qty] = {FMR.q_k[0],FMR.q_k[1],FMR.q_k[2],FMR.q_k[3],FMR.q_k[4],FMR.q_k[5],0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f};
          init_RS_Observer(RSO,obs_x0);                                 // Initialize the observer RSO.
          //-----------------------------------------------------------------------------------------------------
          // Float vector x_0 to define initial conditions for states of GPI controller:
          float gpi_x0[6*Robots_Qty] = {0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f};
          initGPI_Controller(GPI,gpi_x0);                               // Initialize GPI controller.
          //-----------------------------------------------------------------------------------------------------
          // Initializing ADRC control law:
          initADRC_Controller(ADRC,RSO.X_0,RSO.X_0,GPI.X_0,FMR.params); // Initialize ADRC controller.
          //-----------------------------------------------------------------------------------------------------
          // Initializing input torque control as FMR.u_k and omni-wheel angular velocities as FMR.w_k:
          for(i = 0; i < 3*Robots_Qty; i++){
            FMR.u_k[i] = 0.0f;                                          // Initial torque control in the formation.
            FMR.v_k[i] = 0.0f;                                          // Initial voltage control in the formation.
            FMR.w_k[i] = 0.0f;                                          // Initial angular velocities in the formation.
          }
          break;
        }
        case SMC_CS:{
          //------------------------------------------------SMC_CS-----------------------------------------------
          // Float vector z_0 to define initial conditions for states of HGO observer in the cluster space:
          float obs_z0[9*Robots_Qty] = {FMR.c_k[0], FMR.c_k[1], FMR.c_k[2], FMR.c_k[3], FMR.c_k[4], FMR.c_k[5], 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
          init_CSx_Observer01(CSO,obs_z0);                              // Initialize the observer CSO.
          //-----------------------------------------------------------------------------------------------------
          // Initial conditions for previous observer is taken here:
          init_SlidingSurfaces(SLS,REF.Z_0,obs_z0);                     // Initialize sliding surfaces algorithm.
          //-----------------------------------------------------------------------------------------------------
          // Initializing SMC strategy:
          initSMC_Controller(SMC,REF.Z_0,obs_z0,SLS.E_0,FMR.params);    // Initialize SMC strategy.
          //-----------------------------------------------------------------------------------------------------
          // Initializing input torque control as FMR.u_k, PWM control signals as FMR.v_k and omni-wheel angular velocities as FMR.w_k:
          for(i = 0; i < 3*Robots_Qty; i++){
            FMR.u_k[i] = 0.0f;                                          // Initial torque control in the formation.
            FMR.v_k[i] = 0.0f;                                          // Initial voltage control in the formation.
            FMR.w_k[i] = 0.0f;                                          // Initial angular velocities in the formation.
          }
          break;
        }
      }
      //---------------------------------------------------------------------------------------------------------
      // Initializing the selected reference trajectory profiles:
      switch(reftype){
        case CIRCUMFERENCE_01:{
          // Configuring initial parameters for circumference-shape trajectory (check that Rc_0 and Vc_0 are equals to Rc and Vc placed in the trajectory generation source code):
          float Cx_0 = 1800.0f;                                         // [mm], initial reference's centre along workspace's x axis.
          float Cy_0 = 1500.0f;                                         // [mm], initial reference's centre along workspace's y axis.
          float Rc_0 = 1200.0f;                                         // [mm], initial desired radius of planned circumference-shape trajectory.
          float Vc_0 = 40.0f;                                           // [mm/s], initial linear velocity of cluster centroid for circumference-shape trajectory.
          float Dr_0 = 150.0f;                                          // [mm], initial desired half distance between robots.
          // Arraying initial conditions for circumference-shape reference trajectory profiles:
          float ref_z0[9*Robots_Qty] = {Cx_0-Rc_0*sin(M_PI_4), Cy_0-Rc_0*cos(M_PI_4), M_PI_4, Dr_0, M_PI_2, M_PI_2, -Vc_0*cos(M_PI_4), Vc_0*cos(M_PI_4), Vc_0/Rc_0, 0.0f, -2.0f*Vc_0/Rc_0, -2.0f*Vc_0/Rc_0, Vc_0*Vc_0*sin(M_PI_4)/Rc_0, Vc_0*Vc_0*cos(M_PI_4)/Rc_0, 0.0f, 0.0f, 0.0f, 0.0f};
          // float ref_z0[9*Robots_Qty] = {Cx_0-Rc_0*sin(M_PI_4), Cy_0-Rc_0*cos(M_PI_4), M_PI_4, Dr_0, -M_PI_4, -M_PI_4, -Vc_0*cos(M_PI_4), Vc_0*sin(M_PI_4), Vc_0/Rc_0, 0.0f, -Vc_0/Rc_0, -Vc_0/Rc_0, Vc_0*Vc_0*sin(M_PI_4)/Rc_0, Vc_0*Vc_0*cos(M_PI_4)/Rc_0, 0.0f, 0.0f, 0.0f, 0.0f};
          initReference(REF,consys,reftype,ref_z0);                     // Initialize reference builder.
          break;
        }
        case MINGYUE_01:{
          // Configuring initial parameters for first Mingyue's infinity-shape trajectory (check that Sc_0 and Kc_0 are equals to Sc and Kc placed in the infinity generation source code):
          float Cx_0 = 1500.0f;                                         // [mm], initial reference's centre along workspace's x axis.
          float Cy_0 = 1500.0f;                                         // [mm], initial reference's centre along workspace's y axis.
          float Sc_0 = 1200.0f;                                         // [mm], initial scope of infinity-shape trajectory on workspace.
          float Wc_0 = 1.0f/25.0f;                                      // [rad/s], Desired angular velocity relationship gain for planned trajectory.
          float Vcx_0 = Sc_0*Wc_0;                                      // [mm/s], initial cluster's forward speed along x axis.
          float Vcy_0 = 2.0f*Vcx_0;                                     // [mm/s], initial cluster's forward speed along y axis.
          float Dr_0 = 150.0f;                                          // [mm], initial desired half distance between robots.
          float ref_z0[9*Robots_Qty] = {Cx_0, Cy_0, atan2(Vcx_0,Vcy_0)+M_PI_2, Dr_0, -2.0f*atan2(Vcx_0,Vcy_0)-M_PI_2, -2.0f*atan2(Vcx_0,Vcy_0)-M_PI_2, Vcx_0, Vcy_0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
          initReference(REF,consys,reftype,ref_z0);                     // Initialize reference builder.
          break;
        }
        case MINGYUE_02:{
          // Configuring initial parameters for second Mingyue's infinity-shape trajectory (check that Sc_0 and Kc_0 are equals to Sc and Kc placed in the infinity generation source code):
          float Cx_0 = 1500.0f;                                         // [mm], initial reference's centre along workspace's x axis.
          float Cy_0 = 1500.0f;                                         // [mm], initial reference's centre along workspace's y axis.
          float Sc_0 = 1200.0f;                                         // [mm], initial scope of infinity-shape trajectory on workspace.
          float Kc_0 = 25.0f;                                           // Velocity desired gain of planned trajectory.
          float Vcx_0 = Sc_0/Kc_0;                                      // [mm/s], initial cluster's forward speed along x axis.
          float Vcy_0 = 2.0f*Sc_0/Kc_0;                                 // [mm/s], initial cluster's forward speed along y axis.
          float Dr_0 = 150.0f;                                          // [mm], initial desired half distance between robots.
          float ref_z0[9*Robots_Qty] = {Cx_0, Cy_0, atan2(Vcx_0,Vcy_0)+M_PI_2, Dr_0, -atan2(Vcx_0,Vcy_0)-M_PI_2, -atan2(Vcx_0,Vcy_0)-M_PI_2, Vcx_0, Vcy_0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
          initReference(REF,consys,reftype,ref_z0);                     // Initialize reference builder.
          break;
        }
        case STATIC_01:{
          // Configuring initial parameters for first static trivial trajectory (vehicles must turn on a fixed position in the workspace):
          float xc_0 = FMR.c_k[0];                                      // [mm], initial position of whole cluster along workspace's x axis.
          float yc_0 = FMR.c_k[1];                                      // [mm], initial position of whole cluster along workspace's y axis.
          float thc_0 = FMR.c_k[2];                                     // [rad], initial orientation of whole cluster in the workspace.
          float dc_0 = FMR.c_k[3];                                      // [mm], initial distance between both OMRs.
          float ph1_0 = FMR.q_k[2];                                     // [rad], initial orientation of robot 1.
          float ph2_0 = FMR.q_k[5];                                     // [rad], initial orientation of robot 2.
          float d_ph1_0 = 0.25f;                                        // [rad/s], desired initial angular velocity of robot 1.
          float d_ph2_0 = -0.25f;                                       // [rad/s], desired initial angular velocity of robot 2.
          float ref_z0[9*Robots_Qty] = {xc_0, yc_0, thc_0, dc_0, ph1_0-thc_0, ph2_0-thc_0, 0.0f, 0.0f, 0.0f, 0.0f, d_ph1_0, d_ph2_0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
          initReference(REF,consys,reftype,ref_z0);                     // Initialize reference builder.
          break;
        }
      }
      //---------------------------------------------------------------------------------------------------------
      // Adjusting the clutch interval time (t_cl):
      for(i = 0; i < 3*Robots_Qty; i++){
        t_cl += abs(FMR.q_k[i] - REF.y_k[i])/(3.0f*Robots_Qty*1000.0f); // Partial value of clutch interval time.
      }
      t_cl += 8.0f;                                                     // Final value of clutch interval time.
      //---------------------------------------------------------------------------------------------------------
      iterations = 0;                                                   // Reset iterations.
      flagcommand_0 = true;                                             // Setting flag 0 to true.
    }
  }
  IFS0CLR = 0x08000000;                                                 // Clear the UART 1 receiver interrupt status flag.
}
//---------------------------------------------------------------------------------------------------------------
// Receiving data interrupt for UART 4 module:
void __attribute__((interrupt)) UART4_RX_Handler(){
  int i;                                                                // Declaration of i as index integer variable.
  character_4 = U4RXREG;                                                // Variable to save received character by UART 4 module.
  add_2_charBuffer(&UART4,character_4);                                 // Adding character to data buffer assigned to UART 4 module.
  //-------------------------------------------------------------------------------------------------------------
  // Taking values from UART 4 module:
  // If streaming data is completely added to the char buffer of UART 4 structure:
  if(UART4.flag[1] && iterations <= final_iteration && flagcommand_0){
    classify_charBuffer(&UART4);                                        // Classify data from assigned buffer to UART4 struct data matrix.
    for(i = 0; i < 3; i++){
      // Saving the angular velocities of omni-wheels attached on both vehicles:
      FMR.w_k[i+3*UART4.identifier] = atof(UART4.MAT3.data[UART4.identifier][i]);
      initString(UART4.MAT3.data[UART4.identifier][i],UART4.MAT3.zSize);
    }
    init_charBuffer(&UART4);                                            // Initialize char-type data buffer associated to UART 4.
  }
  // Initializing char-type data buffer associated to SCIB when control system is not running:
  else if(UART4.flag[1] && iterations > final_iteration && !flagcommand_0) init_charBuffer(&UART4);
  else NOP;                                                             // No Operation.
  //-------------------------------------------------------------------------------------------------------------
  IFS2CLR = 0x00000010;                                                 // Clear the UART 4 receiver interrupt status flag.
}
//---------------------------------------------------------------------------------------------------------------
// Configuring and enabling UART 1 module (with receiving data interrupt):
void start_uart_1_module(){
  uint16_t baudrate_reg = ((FPB/desired_baudrate_1)/4) - 1;             // Calculating baud rate register with BRGH = 1.
  U1BRG = baudrate_reg;                                                 // Setting Baud rate.
  U1STA = 0x0;                                                          // Clear UART 1 Status and Control Register.
  U1MODE = 0x8008;                                                      // Enable UART 1 module for BRGH = 1, 8-bit data, no parity, and 1 stop bit.
  U1STASET = 0x1005400;                                                 // Enable Transmit and Receive;
                                                                        // Automatic Address Detect mode is enabled.
                                                                        // (UTXISEL = 1), Interrupt flag bit is set when all characters have been transmitted;
                                                                        // (URXISEL = 0), Interrupt flag bit is set when at least a character is received.
  setIntVector(_UART_1_VECTOR,UART1_RX_Handler);                        // Setting interruption vector for UART 1 receiver.
  IPC6SET = 0x0000000D;                                                 // Set interrupt priority of UART 1 receiver to nivel 3, and sub-priority to nivel 1.
  IFS0CLR = 0x08000000;                                                 // Clear the UART 1 receiver interrupt status flag.
  IEC0SET = 0x08000000;                                                 // Enable the UART 1 receiver interrupt.
}
//---------------------------------------------------------------------------------------------------------------
// Configuring and enabling UART 4 module (with receiving data interrupt):
void start_uart_4_module(){
  uint16_t baudrate_reg = ((FPB/desired_baudrate_4)/16) - 1;            // Calculating baud rate register with BRGH = 0.
  U4BRG = baudrate_reg;                                                 // Setting Baud rate.
  U4STA = 0x0;                                                          // Clear UART 4 Status and Control Register.
  U4MODE = 0x8000;                                                      // Enable UART 4 module for BRGH = 0, 8-bit data, no parity, and 1 stop bit.
  U4STASET = 0x1005400;                                                 // Enable Transmit and Receive;
                                                                        // Automatic Address Detect mode is enabled.
                                                                        // (UTXISEL = 1), Interrupt flag bit is set when all characters have been transmitted;
                                                                        // (URXISEL = 0), Interrupt flag bit is set when at least a character is received.
  setIntVector(_UART_4_VECTOR,UART4_RX_Handler);                        // Setting interruption vector for UART 1 receiver.
  IPC12SET = 0x00001100;                                                // Set interrupt priority of UART 4 receiver to nivel 4, and sub-priority to nivel 1.
  IFS2CLR = 0x00000010;                                                 // Clear the UART 4 receiver interrupt status flag.
  IEC2SET = 0x00000010;                                                 // Enable the UART 4 receiver interrupt.
}
//---------------------------------------------------------------------------------------------------------------
// Desabling UART 1 module:
void stop_uart_1_module(){
  U1STA = 0x0;                                                          // Clear UART 1 Status and Control Register.
  U1MODE = 0x00;                                                        // Disable UART 1 module.
  IEC0CLR = 0x08000000;                                                 // Disable the UART 1 receiver interrupt.
}
//---------------------------------------------------------------------------------------------------------------
// Desabling UART 4 module:
void stop_uart_4_module(){
  U4STA = 0x0;                                                          // Clear UART 4 Status and Control Register.
  U4MODE = 0x00;                                                        // Disable UART 4 module.
  IEC2CLR = 0x00000010;                                                 // Disable the UART 4 receiver interrupt.
}
//---------------------------------------------------------------------------------------------------------------
// Main setup instructions:
void setup(){
  pinMode(PIN_LED3,OUTPUT);                                             // Configuring LED 3 as output.
  pinMode(PIN_LED4,OUTPUT);                                             // Configuring LED 4 as output.
  pinMode(PIN_LED5,OUTPUT);                                             // Configuring LED 5 as output.
  pinMode(PIN_LED6,OUTPUT);                                             // Configuring LED 5 as output.
  pinMode(RST,OUTPUT);                                                  // Configuring pin 38 as output.
  digitalWrite(PIN_LED3,LOW);                                           // Turn led 3 off.
  digitalWrite(PIN_LED4,LOW);                                           // Turn led 4 off.
  digitalWrite(PIN_LED5,LOW);                                           // Turn led 5 off.
  digitalWrite(PIN_LED6,LOW);                                           // Turn led 6 off.
  digitalWrite(RST,HIGH);                                               // Turn RST pin to HIGH for establishing UART communication with Xbee.
  //-------------------------------------------------------------------------------------------------------------
  // Enable multi-vector interrupts:
  INTCONbits.MVEC = 1;
  __builtin_enable_interrupts();
  //-------------------------------------------------------------------------------------------------------------
  // Configuring serial ports (UARTs):
  start_uart_1_module();                                                // Enable UART 1 module.
  start_uart_4_module();                                                // Enable UART 4 module.
  init_charBuffer(&UART1);                                              // Initialize char-type data buffer of UART 1.
  init_charBuffer(&UART4);                                              // Initialize char-type data buffer of UART 4.
  //-------------------------------------------------------------------------------------------------------------
  // Configuring SD Card:
  pinMode(chipSelect_SD_default,OUTPUT);
  digitalWrite(chipSelect_SD_default,HIGH);
  // Make sure the default chip select pin is set to so that shields that have a device that use the default CS pin
  // that are connected to the SPI bus do not hold drive bus...
  pinMode(chipSelect_SD,OUTPUT);
  digitalWrite(chipSelect_SD,HIGH);
  // we’ll use the initialization code from the utility libraries:
  // since we’re just testing if the card is working..!
  if(!SD.begin(chipSelect_SD)){
    Serial.println("initialization failed. Things to check:");
    Serial.println("* is a card is inserted?");
    Serial.println("* Is your wiring correct?");
    Serial.println("* did you change the chipSelect pin to match your shield or module?");
    return;
  }
  else{
    Serial.println("Wiring is correct and a card is present.");
  }
  // Delete the file:
  Serial.println("Removing File May0724a.txt...");
  SD.remove("May0724a.txt");
  Serial.println("Done...");
  // Open a new file. Note that only one file can be open at a time, so you have to close this one before opening another.
  // Name of new file must be defined only with eight characters.
  Serial.println("May0724a.txt...");
  baqumau = SD.open("May0724a.txt",FILE_WRITE);                         // Open the file for start to write.
  baqumau.print("measurements = [");                                    // Writing data in microSD.
  Serial.println("Done...");
  //-------------------------------------------------------------------------------------------------------------
  // Starting the program sample time:
  start_timer_3_interrupt();                                            // Start Timer 3 interrupt (MATLAB communication).
  start_timer_4_interrupt();                                            // Start Timer 4 interrupt (Control loop).
  start_timer_5_interrupt();                                            // Start Timer 5 interrupt (Saving data).
  Serial1.println(":0,0.00,0.00,0.00,0.00,0.00,0.00;");                 // Write initial control signals through UART 4.
  delayMicroseconds(100);                                               // 100 microseconds delay.
}
//---------------------------------------------------------------------------------------------------------------
// Main loop instructions:
void loop(){
  int i;                                                                // Declaration of i as integer variable.
  if(iterations <= final_iteration && flagcommand_5 && !REF.flag[0]){
    // Arranging data into the measurements vector:
    snprintf(measurements,bufferSize,"%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%i,%u;",FMR.q_k[0],FMR.q_k[1],FMR.q_k[2],FMR.q_k[3],FMR.q_k[4],FMR.q_k[5],REF.flag[0],iterations);
    baqumau.println(measurements);                                      // Writing data in microSD.
    digitalWrite(PIN_LED3,HIGH);                                        // Turn led 3 on.
    flagcommand_5 = false;                                              // Setting flag 5 to false.
    Serial.println(measurements);                                       // Write measurements via UART 1.
    initString(measurements,bufferSize);                                // Clear measurements data string.
  }
  else if(iterations > final_iteration && baqumau){
    baqumau.println("];");                                              // Writing on microSD.
    baqumau.close();                                                    // Closing the write file.
    digitalWrite(PIN_LED3,LOW);                                         // Turn led 3 off for show finish of writing on microSD.
    switch(consys){
      case ADRC_RS:
      REF.flag[0] = false;                                              // Setting REF.flag to false.
      RSO.flag[0] = false;                                              // Setting RSO.flag to false.
      ADRC.flag[0] = false;                                             // Setting ADRC.flag to false.
      GPI.flag[0] = false;                                              // Setting GPI.flag to false.
      break;
      case SMC_CS:
      REF.flag[0] = false;                                              // Setting REF.flag to false.
      CSO.flag[0] = false;                                              // Setting CSO.flag to false.
      SLS.flag[0] = false;                                              // Setting SLS.flag to false.
      SMC.flag[0] = false;                                              // Setting SMC.flag to false.
      break;
    }
    Serial.println(":10");                                              // Write stop command by UART 1.
    flagcommand_0 = false;                                              // Clear flag command 0.
    flagcommand_1 = false;                                              // Clear flag command 1.
    counter_1 = 0;                                                      // Reset counter 1.
    // Ending input torque control as FMR.u_k and PWM control signals as FMR.v_k:
    for(i = 0; i < 3*Robots_Qty; i++){
      FMR.u_k[i] = 0.0f;                                                // Set the initial torque control in the formation.
      FMR.v_k[i] = 0.0f;                                                // Set the initial voltage control in the formation.
    }
    Serial1.println(":0,0.0,0.0,0.0,0.0,0.0,0.0;");                     // Write final PWM control signals through UART 4.
    delayMicroseconds(10);                                              // 10 microseconds delay.
    stop_uart_1_module();                                               // Stop and disable UART 1 module.
    stop_uart_4_module();                                               // Stop and disable UART 4 module.
  }
  else if(iterations <= final_iteration && flagcommand_5 && REF.flag[0]){
    snprintf(measurements,bufferSize,"%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%1.3f,%u;",REF.y_k[0],REF.y_k[1],REF.y_k[2],REF.y_k[3],REF.y_k[4],REF.y_k[5],iterations);
    baqumau.println(measurements);                                      // Writing data in microSD.
    digitalWrite(PIN_LED3,HIGH);                                        // Turn led 3 on.
    // Serial.println(measurements);                                       // Write measurements by UART 1.
    initString(measurements,bufferSize);                                // Clear measurements data string.
    //-----------------------------------------------------------------------------------------------------------
    // Time out protocol:
    if(flagcommand_1) flagcommand_1 = false;                            // Reset flag command 1.
    else counter_1++;                                                   // Increasing counter 1.
    if(counter_1 >= 20) final_iteration = iterations;                   // Final iteration value is changed.
    else NOP;
    flagcommand_5 = false;                                              // Setting flag 5 to false.
  }
  else NOP;                                                             // No operation.
}
//---------------------------------------------------------------------------------------------------------------
