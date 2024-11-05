//#######################################################################################################################
// PROJECT:     Control_v002.
// DESCRIP:     Basis embedded system to control OMRs formations.
// TITLE:       Observer-based Robust Cluster Space Control for Omni-directional Robot Formations.
//
// OBJECTIVES:
// 1. Blink functionality of LED 09 and LED 10, with timer interrupts.
// 2. Timer 0 interrupt to 250 Hz (Higher priority).
// 3. SCIA communication (UART).
// 4. Receiving FIFO interrupt via SCIA.
// 5. SCIB communication (UART).
// 6. Receiving FIFO interrupt via SCIB.
// 7. SCIC communication (UART).
// 8. Timer 1 interrupt to 200 Hz.
// 9. Timer 2 interrupt to 10 Hz (Lower priority).
// 10. SCIC communication (UART).
// 11. Sending data via SCIC to ChipKit WF32.
// 12. Control system implementation.
//
// LAUNCHXL-F28377S works to 200 MHz...
//
//#######################################################################################################################
// $TI Release: F2837xS Support Library v130 $
// $Release start: Wed May 22 of 2024 $
//#######################################################################################################################
// Defining configuration macros:
#define _LAUNCHXL_F28377S
#define DEVICE_SYSCLK_FREQ 200000000                                                // Native working system clock frequency.
#define BLINKY_LED_GPIO_01 12                                                       // Define pin number for LED 01.
#define BLINKY_LED_GPIO_02 13                                                       // Define pin number for LED 02.
#define freq_hz_0 250                                                               // Frequency in Hz for instructions execution of Timer 0.
#define freq_hz_1 200                                                               // Frequency in Hz for instructions execution of Timer 1.
#define freq_hz_2 10                                                                // Frequency in Hz for instructions execution of Timer 2.
#define exe_minutes 4                                                               // Run time minutes.
//-----------------------------------------------------------------------------------------------------------------------
// Including libraries to the main program:
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <inttypes.h>
#include <stdarg.h>
#include <3WD_OMRs_Controllers.h>                                                   // Controllers library.
#include <3WD_OMRs_References.h>                                                    // Reference library.
#include <baqumau.h>                                                                // My library.
#include "F28x_Project.h"                                                           // Device Header file and Examples Include File.
#include "dsp.h"                                                                    // Defines new data types and macros.
//-----------------------------------------------------------------------------------------------------------------------
// Putting function declarations here:
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through CPU timers 0, 1 and 2:
__interrupt void cpu_timer0_isr(void);
__interrupt void cpu_timer1_isr(void);
__interrupt void cpu_timer2_isr(void);
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through SCIA received data:
__interrupt void scia_rx_isr(void);
// Function to generate interrupt service through SCIB received data:
__interrupt void scib_rx_isr(void);
//-----------------------------------------------------------------------------------------------------------------------
// UART communication with MATLAB:
// Function to initialize SCIA (8-bit word, baud rate 2E6, default, 1 STOP bit, no parity):
void scia_init();
// Function to initialize the SCIA FIFO:
void scia_fifo_init(void);
// Function to transmit a character through the SCIA:
void scia_xmit(char a);
// Function to transmit message via SCIA:
void scia_msg(char *msg);
//-----------------------------------------------------------------------------------------------------------------------
// UART communication with XBee:
// Function to initialize SCIB (8-bit word, baud rate 115200, default, 1 STOP bit, no parity):
void scib_init();
// Function to initialize the SCIB FIFO:
void scib_fifo_init(void);
// Function to transmit a character through the SCIB:
void scib_xmit(char a);
// Function to transmit message via SCIB:
void scib_msg(char *msg);
//-----------------------------------------------------------------------------------------------------------------------
// UART communication with ChipKit WF32:
// Function to initialize SCIC (8-bit word, baud rate 2E6, default, 1 STOP bit, no parity):
void scic_init();
// Function to initialize the SCIC FIFO:
void scic_fifo_init(void);
// Function to transmit a character through the SCIC:
void scic_xmit(char a);
// Function to transmit message via SCIC:
void scic_msg(char *msg);
//-----------------------------------------------------------------------------------------------------------------------
// Optimized Memory Set:
void memset_fast(void* dst, int16 value, Uint16 N);
//-----------------------------------------------------------------------------------------------------------------------
// Global dynamic variables will be declared here, together with some required-definition configuration constants:
const Uint16 bufferSize = 256;                                                      // buffer length.
const float sampleTime = 1.0f/freq_hz_1;                                            // Float parameter to define the global control system sample time.
//-----------------------------------------------------------------------------------------------------------------------
Uint32 final_iteration;                                                             // Declare variable to save final iteration value of program execution.
Uint32 timeoutCount;                                                                // Declare timeout counting variable.
//-----------------------------------------------------------------------------------------------------------------------
volatile bool flagcommand_0;                                                        // Declare flag command 0 (This flag indicates that initial conditions must be configured).
volatile bool flagcommand_1;                                                        // Declare flag command 1 (Used for ON\OFF LED 01).
volatile bool flagcommand_2;                                                        // Declare flag command 2 (Used for ON\OFF LED 02).
volatile bool flagcommand_3;                                                        // Declare flag command 3 (Used for happy ending).
volatile bool flagcommand_4;                                                        // Declare flag command 4 (used for ending due to timeout).
//-----------------------------------------------------------------------------------------------------------------------
volatile char receivedChar_a;                                                       // Variable to save received character from SCIA.
volatile char receivedChar_b;                                                       // Variable to save received character from SCIB.
//-----------------------------------------------------------------------------------------------------------------------
char *msg_1;                                                                        // Variable 1 to save a char data chain.
char *msg_2;                                                                        // Variable 2 to save a char data chain.
char *msg_3;                                                                        // Variable 3 to save a char data chain.
char *msg_4;                                                                        // Variable 4 to save a char data chain.
char *measurements;                                                                 // Variable to save a char data chain that contains the measured signals.
char *controlSignals;                                                               // Variable to save a char data chain that contains the computed control signals.
char *angularVelocities;                                                            // Variable to save a char data chain that contains the angular velocities of robots' wheels.
char *disturbances;                                                                 // Variable to save a char data chain that contains the respective disturbances of OMRs.
char *rsPose;                                                                       // Variable to save a char data chain that contains the robot space pose of OMRs.
char *csPose;                                                                       // Variable to save a char data chain that contains the cluster space pose of OMRs.
char *trackingErrors;                                                               // Variable to save a char data chain that contains the tracking errors for the reference trajectories.
//-----------------------------------------------------------------------------------------------------------------------
enum Control_System consys = ADRC_RS;                                               // Declare the control system type (ADRC_RS or SMC_CS at the moment).
enum Reference_Type reftype = STATIC_01;                                            // Declare the reference shape type (CIRCUMFERENCE_01, MINGYUE_01[02], STATIC_01 at the moment).
float t_cl = 0.0f;                                                                  // Defines a clutch interval time implemented in the control strategies.
float *errors_k;                                                                    // Declaration of this floating-point values vector for arranging error variables.
//-----------------------------------------------------------------------------------------------------------------------
// Setting parameters for the ADRC_RS strategy:
const float epsilon = .42f;                                                         // Small constant used in the RSO observer.
// Float parameters to define the observer gains of RSO, for RS ADRC:
float rso_Gains[9*Robots_Qty][3*Robots_Qty] = {
  {18.4091f,     0.0f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f, 18.4091f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f,  10.125f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f, 18.4091f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f, 18.4091f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f,     0.0f,  10.125f},                     // Setting alpha_1.
  {75.3099f,     0.0f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f, 75.3099f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f, 22.7812f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f, 75.3099f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f, 75.3099f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f,     0.0f, 22.7812f},                     // Setting alpha_2.
  {68.4636f,     0.0f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f, 68.4636f,     0.0f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f, 11.3906f,     0.0f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f, 68.4636f,     0.0f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f, 68.4636f,     0.0f},
  {    0.0f,     0.0f,     0.0f,     0.0f,     0.0f, 11.3906f}                      // Setting alpha_3.
};
// Float parameters to define the GPI controller gains of RS ADRC:
float gpi_Gains[3*Robots_Qty][3] = {
  {41.4770f, 53.9201f, 15.5769f},
  {41.4770f, 53.9201f, 15.5769f},
  {68.4636f, 75.3099f, 18.4091f},
  {41.4770f, 53.9201f, 15.5769f},
  {41.4770f, 53.9201f, 15.5769f},
  {68.4636f, 75.3099f, 18.4091f}                                                    // Defining lambda_0[3*Robots_Qty], lambda_1[3*Robots_Qty] and lambda_2[3*Robots_Qty].
};
//-----------------------------------------------------------------------------------------------------------------------
// Setting parameters for the SMC_CS strategy:
// Float parameters to define the observer gains of CSO, for CS SMC:
float cso_Gains[3*(Robots_Qty-1)][Robots_Qty-1] = {
  {18.4091f},                                                                       // Setting alpha_1.
  {75.3099f},                                                                       // Setting alpha_2.
  {68.4636f}                                                                        // Setting alpha_3.
};
// Float parameters to define the sliding gains of SLS, for CS SMC strategy:
// -- Setting Gamma and Gamma_p1 (Internal anti-windup gain):
float sls_Gains[3*Robots_Qty+1] = {1.54f, 1.54f, 1.68f, 1.57f, 1.68f, 1.68f, 22.0f};
// Defining the SMC gains that cover the unknown disturbances via SMC strategy:
float sms_Gains[3*Robots_Qty] = {1.44f, 1.44f, 1.44f, 1.44f, 1.44f, 1.44f};
// Defining the constants for bounding the input torque disturbances according to the CS SMC strategy:
#define rho_1 (3.0f/4.0f)*mt_1*l_1*l_1/(r_1*r_1)                                    // Constant for bounding the input torque disturbances in robot 1.
#define rho_2 (3.0f/4.0f)*mt_2*l_2*l_2/(r_2*r_2)                                    // Constant for bounding the input torque disturbances in robot 2.
float dis_Values[3*Robots_Qty] = {rho_1, rho_1, rho_1, rho_2, rho_2, rho_2};
float unc_Values[4] = {0.25f, 0.05f, 0.05f, 0.25f};                                 // Define the constants for bounding the uncertainties in the model.
// Defining the saturation values of sliding surfaces at the output:
float sls_satVals[3*Robots_Qty] = {280.0f, 280.0f, 9.5f, 150.0f, 9.5f, 9.5f};
float diff_fc = 45.0f;                                                              // Assign an arbitrary value to the filter coefficient of CSO internal differentiator.
//-----------------------------------------------------------------------------------------------------------------------
// Declaration of data structure for SCIA peripheral:
Data_Struct SCIA;                                                                   // Data structure to arrange data from SCIA.
// Declaration of data structure for SCIB peripheral:
Data_Struct SCIB;                                                                   // Data structure to arrange data from SCIB.
// Declaration of data structure for a high-gain observer in the robot space:
RS_Observer RSO;
// Declaration of data structure for a high-gain observer in the cluster space:
CS_Observer CSO;
// Declaration of data structure for a GPI controller in the robot space:
GPI_Controller GPI;
// Declaration of data structure for the sliding surfaces in the cluster space:
Sl_Surfaces SLS;
// Declaration of data structure for an ADRC controller in the robot space:
ADRC_Controller ADRC;
// Declaration of data structure for a SMC technique in the cluster space:
SMC_Controller SMC;
// Declaration of data structure for the reference builder system:
Reference REF;
// Declaration of a robot formation structure for arranging their relevant variables:
Formation FMR;                                                                      // Declaration of OMRs formation structure.
//-----------------------------------------------------------------------------------------------------------------------
void main(void){
    // Step 1. Initialize System Control:
    // PLL, WatchDog, enable Peripheral Clocks
    // This example function is found in the F2837xS_SysCtrl.c file.
    InitSysCtrl();

    // Step 2. Initialize GPIO:
    // This example function is found in the F2837xS_Gpio.c file and
    // illustrates how to set the GPIO to it's default state.
    InitGpio();
    //-------------------------------------------------------------------------------------------------------------------
    // Configuring LED 01 and LED 02:
    GPIO_SetupPinMux(BLINKY_LED_GPIO_01, GPIO_MUX_CPU1, 0);                         // Configure role of Pin 12 (BLINKY_LED_GPIO_01).
    GPIO_SetupPinOptions(BLINKY_LED_GPIO_01, GPIO_OUTPUT, GPIO_PUSHPULL);           // Set behavior of Pin 12.
    GPIO_WritePin(BLINKY_LED_GPIO_01, 1);                                           // Turn LED GPIO 1 to OFF.
    //-------------------------------------------------------------------------------------------------------------------
    GPIO_SetupPinMux(BLINKY_LED_GPIO_02, GPIO_MUX_CPU1, 0);                         // Configure role of Pin 13 (BLINKY_LED_GPIO_02).
    GPIO_SetupPinOptions(BLINKY_LED_GPIO_02, GPIO_OUTPUT, GPIO_PUSHPULL);           // Set behavior of Pin 13.
    GPIO_WritePin(BLINKY_LED_GPIO_02, 1);                                           // Turn LED GPIO 1 to OFF.
    //-------------------------------------------------------------------------------------------------------------------
    EALLOW;
    // Choosing the pins 84 and 85 to the SCI-A port (UART Communication - UART 0):
    GpioCtrlRegs.GPCGMUX2.bit.GPIO84 = 1;                                           // SCIA TXD.
    GpioCtrlRegs.GPCMUX2.bit.GPIO84 = 1;
    GpioCtrlRegs.GPCGMUX2.bit.GPIO85 = 1;                                           // SCIA RXD.
    GpioCtrlRegs.GPCMUX2.bit.GPIO85 = 1;
    // Choosing the pins 86 and 87 to the SCI-B port (UART Communication - UART 1):
    GpioCtrlRegs.GPCGMUX2.bit.GPIO86 = 1;                                           // SCIB TXD.
    GpioCtrlRegs.GPCMUX2.bit.GPIO86 = 1;
    GpioCtrlRegs.GPCGMUX2.bit.GPIO87 = 1;                                           // SCIB RXD.
    GpioCtrlRegs.GPCMUX2.bit.GPIO87 = 1;
    // Choosing the pins 89 and 90 to the SCI-C port (UART Communication - UART 2):
    GpioCtrlRegs.GPCGMUX2.bit.GPIO89 = 1;                                           // SCIC TXD.
    GpioCtrlRegs.GPCMUX2.bit.GPIO89 = 2;
    GpioCtrlRegs.GPCGMUX2.bit.GPIO90 = 1;                                           // SCIC RXD.
    GpioCtrlRegs.GPCMUX2.bit.GPIO90 = 2;
    EDIS;

    // Step 3. Clear all interrupts and initialize PIE vector table:
    // Disable CPU interrupts:
    DINT;

    // Initialize the PIE control registers to their default state.
    // The default state is all PIE interrupts disabled and flags
    // are cleared.
    // This function is found in the F2837xS_PieCtrl.c file.
    InitPieCtrl();

    // Disable CPU interrupts and clear all CPU interrupt flags:
    IER = 0x0000;
    IFR = 0x0000;

    // Initialize the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    // This will populate the entire table, even if the interrupt
    // is not used in this example. This is useful for debug purposes.
    // The shell ISR routines are found in F2837xS_DefaultIsr.c.
    // This function is found in F2837xS_PieVect.c.
    InitPieVectTable();

    // Setting value of final iteration of program execution:
    final_iteration = 60*(Uint32)(exe_minutes)*(Uint32)(freq_hz_1);                 // Final iteration by default: 4 minutes at "freq_hz_0" in Hz.

    // Reseting flags:
    flagcommand_0 = false;                                                          // Set flag command 0 to FALSE.
    flagcommand_1 = false;                                                          // Set flag command 1 to FALSE.
    flagcommand_2 = false;                                                          // Set flag command 2 to FALSE.
    flagcommand_3 = false;                                                          // Set flag command 3 to FALSE.
    flagcommand_4 = false;                                                          // Set flag command 4 to FALSE.

    // Reseting timeout counter:
    timeoutCount = 0;                                                               // Initialize timeout counter.

    // Some messages to control SCIA, SCIB and SCIC peripherals:
    msg_1 = ":9\r\n\0";                                                             // Message to ask to MATLAB for data.
    msg_2 = ":10\r\n\0";                                                            // Message to stop streaming data with MATLAB.
    msg_3 = ":1,0.0;\n";                                                            // Message to stop the saving data process.
    msg_4 = ":0,0.0,0.0,0.0,0.0,0.0,0.0;\n";                                        // Message to stop movement of the omni-wheels.

    // Initializing SCIA:
    scia_fifo_init();                                                               // Initialize the SCIA FIFO.
    scia_init();                                                                    // Initialize the SCIA.
    // Initializing SCIB:
    scib_fifo_init();                                                               // Initialize the SCIB FIFO.
    scib_init();                                                                    // Initialize the SCIB.
    // Initializing SCIC:
    scic_fifo_init();                                                               // Initialize the SCIC FIFO.
    scic_init();                                                                    // Initialize the SCIC.

    // Preallocating memory for used *variables:
    measurements = (char *)malloc(bufferSize * sizeof(char));                       // Preallocate memory for measurement data set.
    controlSignals = (char *)malloc(bufferSize/2 * sizeof(char));                   // Preallocate memory for control signals data set.
    angularVelocities = (char *)malloc(bufferSize/2 * sizeof(char));                // Preallocate memory for angular velocities data set.
    errors_k = (float *)malloc(3*Robots_Qty * sizeof(float));                       // Preallocate memory to save pose error variables in a floating-point values vector.

    // Interrupts that are used in this project are re-mapped to
    // ISR functions found within this file.
    EALLOW;                                                                         // This is needed to write to EALLOW protected registers.
    PieVectTable.TIMER0_INT = &cpu_timer0_isr;
    PieVectTable.TIMER1_INT = &cpu_timer1_isr;
    PieVectTable.TIMER2_INT = &cpu_timer2_isr;
    PieVectTable.SCIA_RX_INT = &scia_rx_isr;
    PieVectTable.SCIB_RX_INT = &scib_rx_isr;
    EDIS;                                                                           // This is needed to disable write to EALLOW protected registers.

    // Step 4. Initialize the Device Peripheral. This function can be
    //         found in F2837xS_CpuTimers.c
    InitCpuTimers();                                                                // Initialize the CPU Timers.

    // Configure CPU-Timer 0, 1, and 2 to interrupt every second:
    // Timer 0 -> 200MHz CPU Frequency, 1/250 seconds of Period (in uSeconds):
    ConfigCpuTimer(&CpuTimer0,200.0f,1000000.0f/freq_hz_0);
    // Timer 1 -> 200MHz CPU Frequency, 1/200 seconds of Period (in uSeconds):
    ConfigCpuTimer(&CpuTimer1,200.0f,1000000.0f/freq_hz_1);
    // Timer 2 -> 200MHz CPU Frequency, 1/10 seconds of Period (in uSeconds):
    ConfigCpuTimer(&CpuTimer2,200.0f,1000000.0f/freq_hz_2);

    // To ensure precise timing, use write-only instructions to write to the entire register. Therefore, if any
    // of the configuration bits are changed in ConfigCpuTimer and InitCpuTimers (in F2837xS_cputimervars.h), the
    // below settings must also be updated.
    CpuTimer0Regs.TCR.all = 0x4000;                                                 // Use write-only instruction to set TSS bit = 0.
    CpuTimer1Regs.TCR.all = 0x4000;                                                 // Use write-only instruction to set TSS bit = 0.
    CpuTimer2Regs.TCR.all = 0x4000;                                                 // Use write-only instruction to set TSS bit = 0.

    // Step 5. User specific code, enable interrupts:

    // Enable CPU int1 which is connected to CPU-Timer 0, CPU int13
    // which is connected to CPU-Timer 1, and CPU int14, which is connected
    // to CPU-Timer 2:
    IER |= M_INT1;
    IER |= M_INT13;
    IER |= M_INT14;
    //-------------------------------------------------------------------------------------------------------------------
    // Enabling PIE interrupt group 9 globally at the CPU level (SCIA and SCIB):
    IER |= M_INT9;                                                                  // Enable CPU INT9 (for SCIA interrupts).

    // Enable TINT0 in the PIE: Group 1 interrupt 7:
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;                                              // Enable PIE Group 1, interrupt 7 (CPU Timer 0).
    // Enable SCIRXINTA in the PIE: Group 9 interrupt 1:
    PieCtrlRegs.PIEIER9.bit.INTx1 = 1;                                              // Enable PIE Group 9, interrupt 1 (SCIA RX).
    // Enable SCIRXINTB in the PIE: Group 9 interrupt 3:
    PieCtrlRegs.PIEIER9.bit.INTx3 = 1;                                              // Enable PIE Group 9, interrupt 3 (SCIB RX).

    // Enable global Interrupts and higher priority real-time debug events:
    EINT;  // Enable Global interrupt INTM.
    ERTM;  // Enable Global real-time interrupt DBGM.

    // Step 6. Defining data structure that will be used by this code:
    // Definition of data structure for SCIA peripheral (required for getting and arranging data from MATLAB):
    SCIA = createDataStruct(bufferSize,1,3*Robots_Qty,16);
    init_charBuffer(&SCIA);                                                         // Initialize dedicated char-type data buffer of SCIA.
    // Definition of data structure for SCIB peripheral (required for getting and arranging data from XBee):
    SCIB = createDataStruct(bufferSize,2,3,16);
    init_charBuffer(&SCIB);                                                         // Initialize dedicated char-type data buffer of SCIB.
    // Creating data structure for a high-gain observer in the robot space:
    RSO = createRS_Observer(sampleTime,rso_Gains,epsilon);
    // Creating data structure for a high-gain observer in the cluster space:
    CSO = createCS_Observer01(sampleTime,cso_Gains,epsilon,diff_fc);
    // Creating data structure for a GPI controller in the robot space:
    GPI = createGPI_Controller(sampleTime,gpi_Gains);
    // Creating data structure for the sliding surfaces in the cluster space:
    SLS = createSlidingSurfaces(sampleTime,sls_Gains,sls_satVals);
    // Creating data structure for an ADRC controller in the robot space:
    ADRC = createADRC_Controller();
    // Creating data structure for a SMC technique in the cluster space:
    SMC = createSMC_Controller(sms_Gains,unc_Values,dis_Values,sls_Gains,epsilon);
    // Creating data structure for the reference builder system:
    REF = createReference(sampleTime,reftype);                                      // Create reference structure.
    // Creating a robot formation structure for arranging their relevant variables:
    FMR = createFormation(Robots_Qty);                                              // Create the OMRs formation structure.
    while(!FMR.flag[0]) FMR = createFormation(Robots_Qty);                          // Create the OMRs formation structure.

    // Step 7. IDLE loop. Just sit and loop forever (optional):
    for(;;){
        if(flagcommand_3){
            GPIO_WritePin(BLINKY_LED_GPIO_01, 1);                                   // Turn LED GPIO 1 to OFF.
            GPIO_WritePin(BLINKY_LED_GPIO_02, 1);                                   // Turn LED GPIO 1 to OFF.
            scib_msg(msg_4);                                                        // Send message to stop omni-wheels in the formation.
            //-----------------------------------------------------------------------------------------------------------
            IER &= ~M_INT1;                                                         // Disable CPU timer 0 interrupt.
            IER &= ~M_INT13;                                                        // Disable CPU timer 1 interrupt.
            IER &= ~M_INT14;                                                        // Disable CPU timer 2 interrupt.
            CpuTimer1.InterruptCount = 0;                                           // Reset counter of CPU timer 1.
            switch(consys){
                case ADRC_RS:
                    REF.flag[0] = false;                                            // Setting REF.flag to false.
                    RSO.flag[0] = false;                                            // Setting RSO.flag to false.
                    ADRC.flag[0] = false;                                           // Setting ADRC.flag to false.
                    GPI.flag[0] = false;                                            // Setting GPI.flag to false.
                    break;
                case SMC_CS:
                    REF.flag[0] = false;                                            // Setting REF.flag to false.
                    CSO.flag[0] = false;                                            // Setting CSO.flag to false.
                    SLS.flag[0] = false;                                            // Setting SLS.flag to false.
                    SMC.flag[0] = false;                                            // Setting SMC.flag to false.
                    break;
            }
            flagcommand_3 = false;                                                  // Reset flag command 3.
        }
        else NOP;                                                                   // No Operation (burn a cycle).
    }
}
//-----------------------------------------------------------------------------------------------------------------------
// Putting function definitions here:
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through CPU timer 0 (streaming data from MATLAB at 250 Hz):
__interrupt void cpu_timer0_isr(void){
    CpuTimer0.InterruptCount++;
    //-------------------------------------------------------------------------------------------------------------------
    // Blinking LED GPIO 1:
    if(flagcommand_1 && CpuTimer0.InterruptCount == freq_hz_0 && CpuTimer1.InterruptCount <= final_iteration){
        GPIO_WritePin(BLINKY_LED_GPIO_01, 0);                                       // Turn LED GPIO 1 to ON.
        flagcommand_1 = false;                                                      // Set flag command 1 to FALSE.
        CpuTimer0.InterruptCount = 0;                                               // Reset Timer 0 counter.
    }
    else if(!flagcommand_1 && CpuTimer0.InterruptCount == freq_hz_0 && CpuTimer1.InterruptCount <= final_iteration){
        GPIO_WritePin(BLINKY_LED_GPIO_01, 1);                                       // Turn LED GPIO 1 to OFF.
        flagcommand_1 = true;                                                       // Set flag command 1 to TRUE.
        CpuTimer0.InterruptCount = 0;                                               // Reset Timer 0 counter.
    }
    //-------------------------------------------------------------------------------------------------------------------
    // Sending command to MATLAB:
    if(CpuTimer1.InterruptCount <= final_iteration) scia_msg(msg_1);                // Write message 1 through SCIA peripheral.
    else scia_msg(msg_2);                                                           // Otherwise write message 2 through SCIA peripheral.
    //-------------------------------------------------------------------------------------------------------------------
    // Clearing the interrupt flag:
    CpuTimer0Regs.TCR.bit.TIF = 1;                                                  // Clear the Timer 0 interrupt flag.
    //-------------------------------------------------------------------------------------------------------------------
    // Acknowledge this interrupt to receive more interrupts from group 1:
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through CPU timer 1 (Control system is implemented here at 200 Hz):
__interrupt void cpu_timer1_isr(void){
    int i;                                                                          // Declaration of i as integer iteration variable.
    // Clearing the interrupt flag:
    CpuTimer1Regs.TCR.bit.TIF = 1;                                                  // Clear the Timer 1 interrupt flag.
    // Re-enabling global interrupts to allow nesting of higher-priority interrupts:
    EINT;
    // Increasing counter on Timer 1:
    CpuTimer1.InterruptCount++;
    //-------------------------------------------------------------------------------------------------------------------
    // -- (The CPU acknowledges the interrupt) --
    //-------------------------------------------------------------------------------------------------------------------
    if(CpuTimer1.InterruptCount <= final_iteration && flagcommand_0){
        //---------------------------------------------------------------------------------------------------------------
        // Updating the state variables to current values:
        for(i = 0; i < 3*Robots_Qty; i++){
            FMR.q_k[i] = atof(SCIA.MAT3.data[0][i]);                                // Saving pose of OMRs formation along global reference frame.
        }
        float angles_k[Robots_Qty] = {FMR.q_k[2], FMR.q_k[5]};                      // Orientation vector in the robot space, obtained from streaming.
        angleConversion(FMR.CORq,angles_k);                                         // Compute angle conversion to the absolute domain.
        FMR.q_k[2] = FMR.CORq.y_k[0];                                               // Determines ph1(k).
        FMR.q_k[5] = FMR.CORq.y_k[1];                                               // Determines ph2(k).
        computeCSVariables(FMR);                                                    // Compute the cluster space variables of FMR formation.
        // Saving OMRs formation pose data in a string-format version:
        for(i = 0; i < 3*Robots_Qty; i++){
            memset_fast(FMR.qs_k.data[i],0,FMR.qs_k.bufferSize);                    // Clear char-type string vector where OMRs' robot space pose will be saved.
            memset_fast(FMR.cs_k.data[i],0,FMR.cs_k.bufferSize);                    // Clear char-type string vector where OMRs' cluster space pose will be saved.
            ftoa(roundToThreeDecimals(FMR.q_k[i]),FMR.qs_k.data[i],3);              // Saving same robot space pose of OMRs formation, but in string-format.
            ftoa(roundToThreeDecimals(FMR.c_k[i]),FMR.cs_k.data[i],3);              // Saving same cluster space pose of OMRs formation, but in string-format.
        }
        //---------------------------------------------------------------------------------------------------------------
        // Computing the desired reference tracking-trajectories:
        // computeCircumference01(REF,consys,CpuTimer1.InterruptCount);             // Compute desired reference profiles for OMRs synchronization.
        // computeInfinity01(REF,consys,CpuTimer1.InterruptCount);                  // Compute desired reference profiles for OMRs synchronization.
        computeStatical01(REF,consys);                                              // Compute desired reference profiles for OMRs synchronization.
        //---------------------------------------------------------------------------------------------------------------
        // Computing the designed control strategy:
        switch(consys){
            case ADRC_RS:{
                //--------------------------------------------ADRC_RS----------------------------------------------------
                // Estimation via High-gain Observer:
                RS_Estimation(RSO,FMR.u_k,FMR.q_k,FMR.params);                      // Estimates the OMRs formation output q(k), first derivative and disturbances.
                //-------------------------------------------------------------------------------------------------------
                // GPI control law, based on tracking error states:
                for(i = 0; i < 3*Robots_Qty; i++){
                  errors_k[i] = RSO.y_k[i] - REF.y_k[i];                            // Computes error e(k) = q(k) - q*(k), where q*(k) are the pose tracking-trajectories.
                }
                computeGPIControl(GPI,errors_k);                                    // Compute GPI control action.
                //-------------------------------------------------------------------------------------------------------
                // Computing ADRC RS strategy:
                computeADRC(ADRC,REF.y_k,RSO.y_k,GPI.y_k,FMR.params);               // Compute ADRC control action.
                //-------------------------------------------------------------------------------------------------------
                // Conditioning input torque control for OMRs formation:
                for(i = 0; i < 3; i++){
                  FMR.u_k[i] = clutch(saturation(ADRC.y_k[i],-100.0f/ke_1,100.0f/ke_1),t_cl,sampleTime,CpuTimer1.InterruptCount);
                  FMR.v_k[i] = roundToThreeDecimals(FMR.u_k[i]*ke_1);
                  FMR.u_k[i+3] = clutch(saturation(ADRC.y_k[i+3],-100.0f/ke_2,100.0f/ke_2),t_cl,sampleTime,CpuTimer1.InterruptCount);
                  FMR.v_k[i+3] = roundToThreeDecimals(FMR.u_k[i+3]*ke_2);
                  //-----------------------------------------------------------------------------------------------------
                  memset_fast(FMR.us_k.data[i],0,FMR.us_k.bufferSize);              // Clear char-type string vector where OMRs' control signals will be saved.
                  ftoa(FMR.u_k[i],FMR.us_k.data[i],3);                              // Saving same control signals of OMRs formation, but in string-format.
                  memset_fast(FMR.vs_k.data[i],0,FMR.vs_k.bufferSize);              // Clear char-type string vector where OMRs' PWMs control signals will be saved.
                  ftoa(FMR.v_k[i],FMR.vs_k.data[i],3);                              // Saving same PWMs control signals of OMRs formation, but in string-format.
                  memset_fast(FMR.us_k.data[i+3],0,FMR.us_k.bufferSize);            // Clear char-type string vector where OMRs' control signals will be saved.
                  ftoa(FMR.u_k[i+3],FMR.us_k.data[i+3],3);                          // Saving same control signals of OMRs formation, but in string-format.
                  memset_fast(FMR.vs_k.data[i+3],0,FMR.vs_k.bufferSize);            // Clear char-type string vector where OMRs' PWMs control signals will be saved.
                  ftoa(FMR.v_k[i+3],FMR.vs_k.data[i+3],3);                          // Saving same PWMs control signals of OMRs formation, but in string-format.
                }
                break;
              }
            case SMC_CS:{
                //---------------------------------------------SMC_CS----------------------------------------------------
                // Estimation via High-gain Observer:
                CS_Estimation01(CSO,FMR.u_k,FMR.c_k,FMR.params);                    // Estimates the OMRs formation output c(k), first derivative and disturbances.
                //-------------------------------------------------------------------------------------------------------
                // Computing the sliding surfaces required by SMC CS:
                compute_SlidingSurfaces(SLS,REF.y_k,FMR.c_k,CSO.y_k);               // Update to current values for sliding surfaces.
                //-------------------------------------------------------------------------------------------------------
                // Computing SMC CS strategy:
                computeSMC_Controller(SMC,REF.y_k,FMR.c_k,CSO.y_k,SLS.y_k,FMR.params);  // Update the current values for SMC CS strategy.
                //-------------------------------------------------------------------------------------------------------
                // Conditioning input torque control for OMRs formation:
                for(i = 0; i < 3; i++){
                  FMR.u_k[i] = clutch(saturation(SMC.y_k[i],-100.0f/ke_1,100.0f/ke_1),t_cl,sampleTime,CpuTimer1.InterruptCount);
                  FMR.v_k[i] = roundToThreeDecimals(FMR.u_k[i]*ke_1);
                  FMR.u_k[i+3] = clutch(saturation(SMC.y_k[i+3],-100.0f/ke_2,100.0f/ke_2),t_cl,sampleTime,CpuTimer1.InterruptCount);
                  FMR.v_k[i+3] = roundToThreeDecimals(FMR.u_k[i+3]*ke_2);
                  //-----------------------------------------------------------------------------------------------------
                  memset_fast(FMR.us_k.data[i],0,FMR.us_k.bufferSize);              // Clear char-type string vector where OMRs' control signals will be saved.
                  ftoa(FMR.u_k[i],FMR.us_k.data[i],3);                              // Saving same control signals of OMRs formation, but in string-format.
                  memset_fast(FMR.vs_k.data[i],0,FMR.vs_k.bufferSize);              // Clear char-type string vector where OMRs' PWMs control signals will be saved.
                  ftoa(FMR.v_k[i],FMR.vs_k.data[i],3);                              // Saving same PWMs control signals of OMRs formation, but in string-format.
                  memset_fast(FMR.us_k.data[i+3],0,FMR.us_k.bufferSize);            // Clear char-type string vector where OMRs' control signals will be saved.
                  ftoa(FMR.u_k[i+3],FMR.us_k.data[i+3],3);                          // Saving same control signals of OMRs formation, but in string-format.
                  memset_fast(FMR.vs_k.data[i+3],0,FMR.vs_k.bufferSize);            // Clear char-type string vector where OMRs' PWMs control signals will be saved.
                  ftoa(FMR.v_k[i+3],FMR.vs_k.data[i+3],3);                          // Saving same PWMs control signals of OMRs formation, but in string-format.
                  //-----------------------------------------------------------------------------------------------------
                  // Computing tracking errors states:
                  errors_k[i] = FMR.q_k[i] - REF.x1_k[i];
                  errors_k[i+3] = FMR.q_k[i+3] - REF.x1_k[i+3];
                }
                break;
            }
        }
        //---------------------------------------------------------------------------------------------------------------
        // Packing and streaming the control signals for OMRs formation:
        memset_fast(controlSignals,0,sizeof(controlSignals));                       // Initialize controlSignals data chain.
        snprintf(controlSignals,sizeof(controlSignals),":0,%s,%s,%s,%s,%s,%s;\n",FMR.vs_k.data[0],FMR.vs_k.data[1],FMR.vs_k.data[2],FMR.vs_k.data[3],FMR.vs_k.data[4],FMR.vs_k.data[5]);
        scib_msg(controlSignals);                                                   // Write measured variables through SCIB peripheral.
    }
    //-------------------------------------------------------------------------------------------------------------------
    // Disabling global interrupts before exiting ISR to prevent nested interrupts during exit:
    DINT;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through CPU timer 2 (Sending OMRs formation variables to ChipKit WF32 board at 10 Hz):
__interrupt void cpu_timer2_isr(void){
    // Clearing the interrupt flag:
    CpuTimer2Regs.TCR.bit.TIF = 1;                                                  // Clear the Timer 2 interrupt flag.
    // Re-enabling global interrupts to allow nesting of higher-priority interrupts:
    EINT;
    // Increasing counter on Timer 2:
    CpuTimer2.InterruptCount++;
    //-------------------------------------------------------------------------------------------------------------------
    // -- (The CPU acknowledges the interrupt) --
    //-------------------------------------------------------------------------------------------------------------------
    // Blinking LED GPIO 2:
    if(flagcommand_2 && CpuTimer2.InterruptCount == freq_hz_2 && CpuTimer1.InterruptCount <= final_iteration){
        GPIO_WritePin(BLINKY_LED_GPIO_02, 0);                                       // Turn LED GPIO 2 to ON.
        flagcommand_2 = false;                                                      // Set flag command 2 to FALSE.
        CpuTimer2.InterruptCount = 0;                                               // Reset Timer 2 counter.
    }
    else if(!flagcommand_2 && CpuTimer2.InterruptCount == freq_hz_2 && CpuTimer1.InterruptCount <= final_iteration){
        GPIO_WritePin(BLINKY_LED_GPIO_02, 1);                                       // Turn LED GPIO 2 to OFF.
        flagcommand_2 = true;                                                       // Set flag command 2 to TRUE.
        CpuTimer2.InterruptCount = 0;                                               // Reset Timer 2 counter.
    }
    if(CpuTimer1.InterruptCount <= final_iteration && flagcommand_0){
        //---------------------------------------------------------------------------------------------------------------
        // Timeout protocol:
        if(flagcommand_4){
            flagcommand_4 = false;                                                  // Reset this flag to check if exist timeout state for SCIA receiving data.
            timeoutCount = 1;                                                       // Increasing timeout counter.
        }
        else if(timeoutCount >= 20) final_iteration = CpuTimer1.InterruptCount;     // Force ending execution.
        else timeoutCount++;
        //---------------------------------------------------------------------------------------------------------------
        // Packing and streaming the measurement variables of OMRs formation:
        memset_fast(measurements,0,bufferSize);                                     // Initialize measurements data chain.
        snprintf(measurements,bufferSize,":0,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%lu;\n",FMR.qs_k.data[0],FMR.qs_k.data[1],FMR.qs_k.data[2],FMR.qs_k.data[3],FMR.qs_k.data[4],FMR.qs_k.data[5],FMR.cs_k.data[0],FMR.cs_k.data[1],FMR.cs_k.data[2],FMR.cs_k.data[3],FMR.cs_k.data[4],FMR.cs_k.data[5],(unsigned long)(CpuTimer1.InterruptCount));
        scic_msg(measurements);                                                     // Write measured variables through SCIC peripheral.
    }
    else if(CpuTimer1.InterruptCount > final_iteration && flagcommand_0){
        // Stopping the streaming of measurement variables:
        scic_msg(msg_3);                                                            // Write streaming stop command via SCIC peripheral.
        flagcommand_0 = false;                                                      // Reset flag command 0.
        flagcommand_3 = true;                                                       // Set flag command 3 to TRUE (disable interrupts).
    }
    //-------------------------------------------------------------------------------------------------------------------
    // Disabling global interrupts before exiting ISR to prevent nested interrupts during exit:
    DINT;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through SCIA received data (Receiving data from MATLAB):
__interrupt void scia_rx_isr(void){
    int i;                                                                          // Declaration of i as index integer variable.
    // Checking how many bytes are in the FIFO (you can use this information):
    uint16_t fifo_level = SciaRegs.SCIFFRX.bit.RXFFST;
    // Loop to read all available data in the FIFO:
    while(SciaRegs.SCIFFRX.bit.RXFFST > 0){
        receivedChar_a = SciaRegs.SCIRXBUF.all;                                     // Read one byte from the RX buffer.
        add_2_charBuffer(&SCIA,receivedChar_a);                                     // Adding character to data buffer assigned to SCIA peripheral.
    }
    // If streaming data is completely added to the char buffer of SCIA structure:
    if(SCIA.flag[1]){
        flagcommand_4 = true;                                                       // Start to check the time out state for SCIA receiving data.
        timeoutCount = 0;                                                           // Reset timeout counter.
        classify_charBuffer(&SCIA);                                                 // Classify data from assigned buffer to UART1 structure data matrix.
        init_charBuffer(&SCIA);                                                     // Initialize char-type data buffer associated to UART 1.
        if(!flagcommand_0){
            //-----------------------------------------------------------------------------------------------------------
            // Saving initial state variables:
            for(i = 0; i < 3*Robots_Qty; i++){
                FMR.q_k[i] = atof(SCIA.MAT3.data[0][i]);                            // Saving pose of OMRs formation along global reference frame.
            }
            float angles_k[Robots_Qty] = {FMR.q_k[2], FMR.q_k[5]};                  // Initial orientation vector in the robot space.
            if(!FMR.CORq.flag[0]){
                initAngleConverter(FMR.CORq,angles_k);                              // Initialize angle conversion to absolute domain in the robot space.
            }
            computeCSVariables(FMR);                                                // Compute the cluster space variables of FMR formation.
            // Saving OMRs formation pose data in a string-format version:
            for(i = 0; i < 3*Robots_Qty; i++){
                memset_fast(FMR.qs_k.data[i],0,FMR.qs_k.bufferSize);                // Clear char-type string vector where OMRs' pose will be saved.
                memset_fast(FMR.cs_k.data[i],0,FMR.cs_k.bufferSize);                // Clear char-type string vector where OMRs' cluster space pose will be saved.
                ftoa(roundToThreeDecimals(FMR.q_k[i]),FMR.qs_k.data[i],3);          // Saving same robot space pose of OMRs formation, but in string-format.
                ftoa(roundToThreeDecimals(FMR.c_k[i]),FMR.cs_k.data[i],3);          // Saving same pose of OMRs formation, but in string-format.
            }
            //---------------------------------------------------------------------------------------------------------
            // Initializing the selected control system:
            switch(consys){
                case ADRC_RS:{
                    //----------------------------------------ADRC_RS--------------------------------------------------
                    // Float vector x_0 to define initial conditions for states of HGO observer in the robot space:
                    float obs_x0[9*Robots_Qty] = {FMR.q_k[0],FMR.q_k[1],FMR.q_k[2],FMR.q_k[3],FMR.q_k[4],FMR.q_k[5],0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f};
                    init_RS_Observer(RSO,obs_x0);                                   // Initialize the observer RSO.
                    //-------------------------------------------------------------------------------------------------
                    // Float vector x_0 to define initial conditions for states of GPI controller:
                    float gpi_x0[6*Robots_Qty] = {0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f,0.0f};
                    initGPI_Controller(GPI,gpi_x0);                                 // Initialize GPI controller.
                    //-------------------------------------------------------------------------------------------------
                    // Initializing ADRC control law:
                    initADRC_Controller(ADRC,RSO.X_0,RSO.X_0,GPI.X_0,FMR.params);   // Initialize ADRC controller.
                    //-------------------------------------------------------------------------------------------------
                    // Initializing input torque control as FMR.u_k and omni-wheel angular velocities as FMR.w_k:
                    for(i = 0; i < 3*Robots_Qty; i++){
                        FMR.u_k[i] = 0.0f;                                          // Initial torque control in the formation.
                        FMR.v_k[i] = 0.0f;                                          // Initial voltage control in the formation.
                        FMR.w_k[i] = 0.0f;                                          // Initial angular velocities in the formation.
                        memset_fast(FMR.us_k.data[i],0,FMR.us_k.bufferSize);        // Clear char-type string vector where OMRs' control signals will be saved.
                        ftoa(FMR.u_k[i],FMR.us_k.data[i],3);                        // Saving same control signals of OMRs formation, but in string-format.
                        memset_fast(FMR.vs_k.data[i],0,FMR.vs_k.bufferSize);        // Clear char-type string vector where OMRs' PWMs control signals will be saved.
                        ftoa(FMR.v_k[i],FMR.vs_k.data[i],3);                        // Saving same PWMs control signals of OMRs formation, but in string-format.
                        memset_fast(FMR.ws_k.data[i],0,FMR.ws_k.bufferSize);        // Clear char-type string vector where angular velocities of OMRs' wheels will be saved.
                        ftoa(FMR.w_k[i],FMR.ws_k.data[i],3);                        // Saving same above angular velocities of OMRs formation, but in string-format.
                    }
                    break;
                }
                case SMC_CS:{
                    //----------------------------------------------SMC_CS---------------------------------------------
                    // Float vector z_0 to define initial conditions for states of HGO observer in the cluster space:
                    float obs_z0[9*Robots_Qty] = {FMR.c_k[0], FMR.c_k[1], FMR.c_k[2], FMR.c_k[3], FMR.c_k[4], FMR.c_k[5], 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
                    init_CS_Observer01(CSO,obs_z0);                                 // Initialize the observer CSO.
                    //-------------------------------------------------------------------------------------------------
                    // Initial conditions for previous observer is taken here:
                    init_SlidingSurfaces(SLS,REF.Z_0,obs_z0);                       // Initialize sliding surfaces algorithm.
                    //-------------------------------------------------------------------------------------------------
                    // Initializing SMC strategy:
                    initSMC_Controller(SMC,REF.Z_0,obs_z0,SLS.E_0,FMR.params);      // Initialize SMC strategy.
                    //-------------------------------------------------------------------------------------------------
                    // Initializing input torque control as FMR.u_k, PWM control signals as FMR.v_k and omni-wheel angular velocities as FMR.w_k:
                    for(i = 0; i < 3*Robots_Qty; i++){
                        FMR.u_k[i] = 0.0f;                                          // Initial torque control in the formation.
                        FMR.v_k[i] = 0.0f;                                          // Initial voltage control in the formation.
                        FMR.w_k[i] = 0.0f;                                          // Initial angular velocities in the formation.
                        memset_fast(FMR.us_k.data[i],0,FMR.us_k.bufferSize);        // Clear char-type string vector where OMRs' control signals will be saved.
                        ftoa(FMR.u_k[i],FMR.us_k.data[i],3);                        // Saving same control signals of OMRs formation, but in string-format.
                        memset_fast(FMR.vs_k.data[i],0,FMR.vs_k.bufferSize);        // Clear char-type string vector where OMRs' PWMs control signals will be saved.
                        ftoa(FMR.v_k[i],FMR.vs_k.data[i],3);                        // Saving same PWMs control signals of OMRs formation, but in string-format.
                        memset_fast(FMR.ws_k.data[i],0,FMR.ws_k.bufferSize);        // Clear char-type string vector where angular velocities of OMRs' wheels will be saved.
                        ftoa(FMR.w_k[i],FMR.ws_k.data[i],3);                        // Saving same above angular velocities of OMRs formation, but in string-format.
                    }
                    break;
                }
            }
            //---------------------------------------------------------------------------------------------------------
            // Initializing the selected reference trajectory profiles:
            switch(reftype){
                case CIRCUMFERENCE_01:{
                    // Configuring initial parameters for circumference-shape trajectory (check that Rc_0 and Vc_0 are equals to Rc and Vc placed in the trajectory generation source code):
                    float Cx_0 = 1800.0f;                                           // [mm], initial reference's centre along workspace's x axis.
                    float Cy_0 = 1500.0f;                                           // [mm], initial reference's centre along workspace's y axis.
                    float Rc_0 = 1200.0f;                                           // [mm], initial desired radius of planned circumference-shape trajectory.
                    float Vc_0 = 40.0f;                                             // [mm/s], initial linear velocity of cluster centroid for circumference-shape trajectory.
                    float Dr_0 = 150.0f;                                            // [mm], initial desired half distance between robots.
                    // Arraying initial conditions for circumference-shape reference trajectory profiles:
                    float ref_z0[9*Robots_Qty] = {Cx_0-Rc_0*sinf(M_PI_4), Cy_0-Rc_0*cosf(M_PI_4), M_PI_4, Dr_0, M_PI_2, M_PI_2, -Vc_0*cosf(M_PI_4), Vc_0*cosf(M_PI_4), Vc_0/Rc_0, 0.0f, -2.0f*Vc_0/Rc_0, -2.0f*Vc_0/Rc_0, Vc_0*Vc_0*sinf(M_PI_4)/Rc_0, Vc_0*Vc_0*cosf(M_PI_4)/Rc_0, 0.0f, 0.0f, 0.0f, 0.0f};
                    // float ref_z0[9*Robots_Qty] = {Cx_0-Rc_0*sinf(M_PI_4), Cy_0-Rc_0*cosf(M_PI_4), M_PI_4, Dr_0, -M_PI_4, -M_PI_4, -Vc_0*cosf(M_PI_4), Vc_0*sinf(M_PI_4), Vc_0/Rc_0, 0.0f, -Vc_0/Rc_0, -Vc_0/Rc_0, Vc_0*Vc_0*sinf(M_PI_4)/Rc_0, Vc_0*Vc_0*cosf(M_PI_4)/Rc_0, 0.0f, 0.0f, 0.0f, 0.0f};
                    initReference(REF,consys,reftype,ref_z0);                       // Initialize reference builder.
                    break;
                }
                case MINGYUE_01:{
                    // Configuring initial parameters for first Mingyue's infinity-shape trajectory (check that Sc_0 and Kc_0 are equals to Sc and Kc placed in the infinity generation source code):
                    float Cx_0 = 1800.0f;                                           // [mm], initial reference's centre along workspace's x axis.
                    float Cy_0 = 1500.0f;                                           // [mm], initial reference's centre along workspace's y axis.
                    float Sc_0 = 1200.0f;                                           // [mm], initial scope of infinity-shape trajectory on workspace.
                    float Kc_0 = 25.0f;                                             // Velocity desired gain of planned trajectory.
                    float Vcx_0 = Sc_0/Kc_0;                                        // [mm/s], initial cluster's forward speed along x axis.
                    float Vcy_0 = 2.0f*Sc_0/Kc_0;                                   // [mm/s], initial cluster's forward speed along y axis.
                    float Dr_0 = 150.0f;                                            // [mm], initial desired half distance between robots.
                    float ref_z0[9*Robots_Qty] = {Cx_0, Cy_0, atan2f(Vcx_0,Vcy_0)+M_PI_2, Dr_0, -2.0f*atan2f(Vcx_0,Vcy_0), -2.0f*atan2f(Vcx_0,Vcy_0), Vcx_0, Vcy_0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
                    initReference(REF,consys,reftype,ref_z0);                       // Initialize reference builder.
                    break;
                }
                case MINGYUE_02:{
                    // Configuring initial parameters for second Mingyue's infinity-shape trajectory (check that Sc_0 and Kc_0 are equals to Sc and Kc placed in the infinity generation source code):
                    float Cx_0 = 1800.0f;                                           // [mm], initial reference's centre along workspace's x axis.
                    float Cy_0 = 1500.0f;                                           // [mm], initial reference's centre along workspace's y axis.
                    float Sc_0 = 1200.0f;                                           // [mm], initial scope of infinity-shape trajectory on workspace.
                    float Kc_0 = 25.0f;                                             // Velocity desired gain of planned trajectory.
                    float Vcx_0 = Sc_0/Kc_0;                                        // [mm/s], initial cluster's forward speed along x axis.
                    float Vcy_0 = 2.0f*Sc_0/Kc_0;                                   // [mm/s], initial cluster's forward speed along y axis.
                    float Dr_0 = 150.0f;                                            // [mm], initial desired half distance between robots.
                    float ref_z0[9*Robots_Qty] = {Cx_0, Cy_0, atan2f(Vcx_0,Vcy_0)+M_PI_2, Dr_0, -atan2f(Vcx_0,Vcy_0)-M_PI_2, -atan2f(Vcx_0,Vcy_0)-M_PI_2, Vcx_0, Vcy_0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
                    initReference(REF,consys,reftype,ref_z0);                       // Initialize reference builder.
                    break;
                }
                case STATIC_01:{
                    // Configuring initial parameters for first static trivial trajectory (vehicles must turn on a fixed position in the workspace):
                    float xc_0 = FMR.c_k[0];                                        // [mm], initial position of whole cluster along workspace's x axis.
                    float yc_0 = FMR.c_k[1];                                        // [mm], initial position of whole cluster along workspace's y axis.
                    float thc_0 = FMR.c_k[2];                                       // [rad], initial orientation of whole cluster in the workspace.
                    float dc_0 = FMR.c_k[3];                                        // [mm], initial distance between both OMRs.
                    float ph1_0 = FMR.q_k[2];                                       // [rad], initial orientation of robot 1.
                    float ph2_0 = FMR.q_k[5];                                       // [rad], initial orientation of robot 2.
                    float d_ph1_0 = 0.25f;                                          // [rad/s], desired initial angular velocity of robot 1.
                    float d_ph2_0 = -0.25f;                                         // [rad/s], desired initial angular velocity of robot 2.
                    float ref_z0[9*Robots_Qty] = {xc_0, yc_0, thc_0, dc_0, ph1_0-thc_0, ph2_0-thc_0, 0.0f, 0.0f, 0.0f, 0.0f, d_ph1_0, d_ph2_0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
                    initReference(REF,consys,reftype,ref_z0);                       // Initialize reference builder.
                    break;
                }
            }
            //---------------------------------------------------------------------------------------------------------
            // Adjusting the clutch interval time (t_cl):
            for(i = 0; i < 3*Robots_Qty; i++){
                t_cl += abs(FMR.q_k[i] - REF.y_k[i])/(3.0f*Robots_Qty*1000.0f);     // Partial value of clutch interval time.
            }
            t_cl += 8.0f;                                                           // Final value of clutch interval time.
            //-----------------------------------------------------------------------------------------------------------
            CpuTimer1.InterruptCount = 0;                                           // Reset CPU timer 1 (iterations).
            flagcommand_0 = true;                                                   // Setting flag 0 to true.
        }
    }
    //-------------------------------------------------------------------------------------------------------------------
    // Clearing the interrupt flag and acknowledge the interrupt:
    SciaRegs.SCIFFRX.bit.RXFFINTCLR = 1;                                            // Clear RX FIFO interrupt flag.
    // Acknowledge this interrupt to receive more interrupts from group 9:
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP9;                                         // Acknowledge PIE group 9 interrupt.
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through SCIB received data (Receiving data from OMRs):
__interrupt void scib_rx_isr(void){
    int i;                                                                          // Declaration of i as index integer variable.
    // Clearing the interrupt flag and acknowledge the interrupt:
    ScibRegs.SCIFFRX.bit.RXFFINTCLR = 1;                                            // Clear RX FIFO interrupt flag.
    // Re-enabling global interrupts to allow nesting of higher-priority interrupts:
    EINT;
    //-------------------------------------------------------------------------------------------------------------------
    // Checking how many bytes are in the FIFO (you can use this information):
    Uint16 fifo_level = ScibRegs.SCIFFRX.bit.RXFFST;                                // Checks how many characters are available in SCIB FIFO peripheral.
    // Loop to read all available data in the FIFO:
    while(ScibRegs.SCIFFRX.bit.RXFFST > 0){
        receivedChar_b = ScibRegs.SCIRXBUF.all;                                     // Read one byte from the RX buffer.
        add_2_charBuffer(&SCIB,receivedChar_b);                                     // Adding character to data buffer assigned to SCIB peripheral.
    }
    // If streaming data is completely added to the char buffer of SCIB structure:
    if(SCIB.flag[1] && CpuTimer1.InterruptCount <= final_iteration && flagcommand_0){
        classify_charBuffer(&SCIB);                                                 // Classify data from assigned buffer to SCIB structure data matrix.
        for(i = 0; i < 3; i++){
            // Saving the angular velocities of omni-wheels attached on OMRs formation (in rad/s).
            FMR.w_k[i+3*SCIB.identifier] = atof(SCIB.MAT3.data[SCIB.identifier][i]);
            // Saving same angular velocities of moni-wheels attached on OMRs formation, but in a string-format version:
            memset_fast(FMR.ws_k.data[i+3*SCIB.identifier],0,FMR.ws_k.bufferSize);  // Initialize or clear char-type string vector where OMRs' angular velocities of wheels will be saved.
            // Saving angular velocities in string-format:
            ftoa(FMR.w_k[i+3*SCIB.identifier],FMR.ws_k.data[i+3*SCIB.identifier],3);
        }
        //---------------------------------------------------------------------------------------------------------------
        // Packing the corresponding angular velocities variables of OMRs formation:
        memset_fast(angularVelocities,0,sizeof(angularVelocities));                 // Initialize angularVelocities data chain.
        snprintf(angularVelocities,sizeof(angularVelocities),"%s,%s,%s,%s,%s,%s",FMR.ws_k.data[0],FMR.ws_k.data[1],FMR.ws_k.data[2],FMR.ws_k.data[3],FMR.ws_k.data[4],FMR.ws_k.data[5]);
        // Clearing buffer within SCIB data structure:
        init_charBuffer(&SCIB);                                                     // Initialize dedicated char-type data buffer of SCIB.
    }
    // Initializing char-type data buffer associated to SCIB when control system is not running:
    else if(SCIB.flag[1] && CpuTimer1.InterruptCount > final_iteration && !flagcommand_0) init_charBuffer(&SCIB);
    else NOP;                                                                       // No Operation (burn a cycle).
    //-------------------------------------------------------------------------------------------------------------------
    // Disabling global interrupts before exiting ISR to prevent nested interrupts during exit:
    DINT;
    // Acknowledge this interrupt to receive more interrupts from group 9:
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP9;                                         // Acknowledge PIE group 9 interrupt.
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to initialize SCIA (8-bit word, baud rate 0x0002, default, 1 STOP bit, no parity):
void scia_init(){
    // Note: Clocks were turned on to the SCIA peripheral,
    // in the InitSysCtrl() function.
    SciaRegs.SCICCR.all = 0x0007;                                                   // 1 stop bit, no loop-back,
                                                                                    // no parity, 8 char bits,
                                                                                    // asynchronous mode, idle-line protocol.
    SciaRegs.SCICTL1.all = 0x0003;                                                  // Enable TX, RX, internal SCICLK,
                                                                                    // disable RX ERR, SLEEP, TXWAKE.
    EALLOW;
    GpioCtrlRegs.GPCQSEL2.bit.GPIO85 = 3;                                           // The GPIO input qualification of GPIO85 is settled to asynchronous mode.
    EDIS;
    // SciaRegs.SCICTL2.bit.TXINTENA = 1;                                              // Transmit interrupt enabled (standard SCIA).
    // SciaRegs.SCICTL1.bit.RXERRINTENA = 1;                                           // Receive Error interrupt enabled (standard SCIA).
    // SciaRegs.SCICTL2.bit.RXBKINTENA = 1;                                            // Receiver-buffer break interrupt enabled (standard SCIA).
    //-------------------------------------------------------------------------------------------------------------------
    // Setting baud rate (BRR = @LSPCLK/desired_baudrate/8 - 1):
    SciaRegs.SCIHBAUD.all = 0x0000;                                                 // Desired baud_rate = 2E6, @LSPCLK = 50MHz (200 MHz SYSCLK).
    SciaRegs.SCILBAUD.all = 0x0002;
    //-------------------------------------------------------------------------------------------------------------------
    SciaRegs.SCICTL1.all = 0x0023;                                                  // Relinquish SCI from Reset.
    //-------------------------------------------------------------------------------------------------------------------
    return;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to initialize the SCIA FIFO:
void scia_fifo_init(void){
    SciaRegs.SCIFFTX.all = 0xE040;                                                  // Enable SCIA FIFO mode,
                                                                                    // transmission FIFO interrupt is disabled.
    SciaRegs.SCIFFRX.all = 0x2061;                                                  // Enable reception FIFO interrupt,
                                                                                    // with interrupt FIFO level 1.
    SciaRegs.SCIFFCT.all = 0x0;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to transmit a character through the SCIA:
void scia_xmit(char a){
    while(SciaRegs.SCIFFTX.bit.TXFFST != 0);                                        // Wait until FIFO TX is ready.
    // while(SciaRegs.SCICTL2.bit.TXRDY == 0);                                         // Wait until TX is ready (standard SCIA).
    SciaRegs.SCITXBUF.all = a;                                                      // Load character to SCIA TX buffer.
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to transmit message via SCIA:
void scia_msg(char *msg){
    int i = 0;                                                                      // Declaration of i as integer variable.
    while(msg[i] != '\0'){
        scia_xmit(msg[i]);                                                          // Transmit byte via SCIA peripheral.
        i++;
    }
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to initialize SCIB (8-bit word, baud rate 0x0035, default, 1 STOP bit, no parity):
void scib_init(){
    // Note: Clocks were turned on to the SCIB peripheral,
    // in the InitSysCtrl() function.
    ScibRegs.SCICCR.all = 0x0007;                                                   // 1 stop bit, no loop-back,
                                                                                    // no parity, 8 char bits,
                                                                                    // asynchronous mode, idle-line protocol.
    ScibRegs.SCICTL1.all = 0x0003;                                                  // Enable TX, RX, internal SCICLK,
                                                                                    // disable RX ERR, SLEEP, TXWAKE.
    EALLOW;
    GpioCtrlRegs.GPCQSEL2.bit.GPIO87 = 3;                                           // The GPIO input qualification of GPIO87 is settled to asynchronous mode.
    EDIS;
    // ScibRegs.SCICTL2.bit.TXINTENA = 1;                                              // Transmit interrupt enabled (standard SCIB).
    // ScibRegs.SCICTL1.bit.RXERRINTENA = 1;                                           // Receive Error interrupt enabled (standard SCIB).
    // ScibRegs.SCICTL2.bit.RXBKINTENA = 1;                                            // Receiver-buffer break interrupt enabled (standard SCIB).
    //-------------------------------------------------------------------------------------------------------------------
    // Setting baud rate (BRR = @LSPCLK/desired_baudrate/8 - 1):
    ScibRegs.SCIHBAUD.all = 0x0000;                                                 // Desired baud_rate = 115200, @LSPCLK = 50MHz (200 MHz SYSCLK).
    ScibRegs.SCILBAUD.all = 0x0035;
    //-------------------------------------------------------------------------------------------------------------------
    ScibRegs.SCICTL1.all = 0x0023;                                                  // Relinquish SCI from Reset.
    //-------------------------------------------------------------------------------------------------------------------
    return;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to initialize the SCIB FIFO:
void scib_fifo_init(void){
    ScibRegs.SCIFFTX.all = 0xE040;                                                  // Enable SCIB FIFO mode,
                                                                                    // transmission FIFO interrupt is disabled.
    ScibRegs.SCIFFRX.all = 0x2061;                                                  // Enable reception FIFO interrupt,
                                                                                    // with interrupt FIFO level 1.
    ScibRegs.SCIFFCT.all = 0x0;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to transmit a character through the SCIB:
void scib_xmit(char a){
    while(ScibRegs.SCIFFTX.bit.TXFFST != 0);                                        // Wait until FIFO TX is ready.
    // while(ScibRegs.SCICTL2.bit.TXRDY == 0);                                         // Wait until TX is ready (standard SCIB).
    ScibRegs.SCITXBUF.all = a;                                                      // Load character to SCIB TX buffer.
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to transmit message via SCIB:
void scib_msg(char *msg){
    int i = 0;                                                                      // Declaration of i as integer variable.
    while(msg[i] != '\0'){
        scib_xmit(msg[i]);                                                          // Transmit byte via SCIB peripheral.
        i++;
    }
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to initialize SCIC (8-bit word, baud rate 0x0002, default, 1 STOP bit, no parity):
void scic_init(){
    // Note: Clocks were turned on to the SCIC peripheral,
    // in the InitSysCtrl() function.
    ScicRegs.SCICCR.all = 0x0007;                                                   // 1 stop bit, no loop-back,
                                                                                    // no parity, 8 char bits,
                                                                                    // asynchronous mode, idle-line protocol.
    ScicRegs.SCICTL1.all = 0x0003;                                                  // Enable TX, RX, internal SCICLK,
                                                                                    // disable RX ERR, SLEEP, TXWAKE.
    EALLOW;
    GpioCtrlRegs.GPCQSEL2.bit.GPIO90 = 3;                                           // The GPIO input qualification of GPIO90 is settled to asynchronous mode.
    EDIS;
    // ScicRegs.SCICTL2.bit.TXINTENA = 1;                                              // Transmit interrupt enabled (standard SCIC).
    // ScicRegs.SCICTL1.bit.RXERRINTENA = 1;                                           // Receive Error interrupt enabled (standard SCIC).
    // ScicRegs.SCICTL2.bit.RXBKINTENA = 1;                                            // Receiver-buffer break interrupt enabled (standard SCIC).
    //-------------------------------------------------------------------------------------------------------------------
    // Setting baud rate (BRR = @LSPCLK/desired_baudrate/8 - 1):
    ScicRegs.SCIHBAUD.all = 0x0000;                                                 // Desired baud_rate = 1250000, @LSPCLK = 50MHz (200 MHz SYSCLK).
    ScicRegs.SCILBAUD.all = 0x0004;
    //-------------------------------------------------------------------------------------------------------------------
    ScicRegs.SCICTL1.all = 0x0023;                                                  // Relinquish SCI from Reset.
    //-------------------------------------------------------------------------------------------------------------------
    return;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to initialize the SCIC FIFO:
void scic_fifo_init(void){
    ScicRegs.SCIFFTX.all = 0xE040;                                                  // Enable SCIC FIFO mode,
                                                                                    // transmission FIFO interrupt is disabled.
    ScicRegs.SCIFFRX.all = 0x2000;                                                  // Reception FIFO interrupt is disabled,
                                                                                    // without interrupt FIFO level.
    ScicRegs.SCIFFCT.all = 0x0002;                                                  // Generates a FIFO transfer execution with an internal delay of 2 baud rate cycles.
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to transmit a character through the SCIC:
void scic_xmit(char a){
    if(ScicRegs.SCIFFTX.bit.TXFFST < 15) ScicRegs.SCITXBUF.all = a;                 // Load character to SCIC TX buffer.
    else{
        ScicRegs.SCITXBUF.all = a;                                                  // Load character to SCIC TX buffer.
        while(ScicRegs.SCIFFTX.bit.TXFFST > 1);                                     // Wait until FIFO TX is ready.
    }
    // while(ScicRegs.SCICTL2.bit.TXRDY == 0);                                         // Wait until TX is ready (standard SCIC).
    // ScicRegs.SCITXBUF.all = a;                                                      // Load character to SCIC TX buffer.
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to transmit message via SCIC:
void scic_msg(char *msg){
    int i = 0;                                                                      // Declaration of i as integer variable.
    while(msg[i] != '\0'){
        scic_xmit(msg[i]);                                                          // Transmit byte via SCIC peripheral.
        i++;
    }
}
//-----------------------------------------------------------------------------------------------------------------------
// No more.
//-----------------------------------------------------------------------------------------------------------------------
