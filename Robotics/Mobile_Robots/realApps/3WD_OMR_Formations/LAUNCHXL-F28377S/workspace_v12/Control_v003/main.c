//#######################################################################################################################
// PROJECT:     Control_v002.
// DESCRIP:     Basis embedded system to control OMRs formations.
// TITLE:       Observer-based Robust Cluster Space Control for Omni-directional Robot Formations.
//
// OBJECTIVES:
// 1. Blink functionality of LED 09 and LED 10, with timer interrupts.
// 2. Timer 0 interrupt to 200 Hz.
// 3. Timer 1 interrupt to 10 Hz.
// 4. Timer 2 interrupt to 250 Hz.
// 5. SCIA communication (UART).
//
// LAUNCHXL-F28377S works to 200 MHz...
//
//#######################################################################################################################
// $TI Release: F2837xS Support Library v130 $
// $Release start: Wed May 22 of 2024 $
//#######################################################################################################################
// Defining configuration macros:
#define _LAUNCHXL_F2837xS
#define DEVICE_SYSCLK_FREQ 200000000                                                // Native working system clock frequency.
#define BLINKY_LED_GPIO_01 12                                                       // Define pin number for LED 01.
#define BLINKY_LED_GPIO_02 13                                                       // Define pin number for LED 02.
#define freq_hz_0 200                                                               // Frequency in Hz for instructions execution of Timer 0.
#define freq_hz_1 10                                                                // Frequency in Hz for instructions execution of Timer 1.
#define freq_hz_2 250                                                               // Frequency in Hz for instructions execution of Timer 2.
#define exe_minutes 4                                                               // Run time minutes.
#define final_iteration 60*exe_minutes*freq_hz_2                                    // Final iteration of program execution (4 minutes at "freq_hz_2" in Hz).
//-----------------------------------------------------------------------------------------------------------------------
// Including libraries to the main program:
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <3WD_OMRs_Controllers.h>                                                   // Controllers library.
#include <3WD_OMRs_References.h>                                                    // Reference library.
#include <baqumau.h>                                                                // My library.
#include "F28x_Project.h"                                                           // Device Header file and Examples Include File.
//-----------------------------------------------------------------------------------------------------------------------
// Putting function declarations here:
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through CPU timers 1, 2 and 3:
__interrupt void cpu_timer0_isr(void);
__interrupt void cpu_timer1_isr(void);
__interrupt void cpu_timer2_isr(void);
//-----------------------------------------------
// Function to initialize SCIA (8-bit word, baud rate 0x000F, default, 1 STOP bit, no parity):
void scia_init();
// Function to initialize the SCIA FIFO:
void scia_fifo_init(void);
// Function to transmit a character through the SCIA:
void scia_xmit(int a);
// Function to transmit message via SCIA:
void scia_msg(char *msg);
//-----------------------------------------------------------------------------------------------------------------------
// Global variables used here:
bool flagcommand_1 = false;                                                         // Setting flag command 1 to false.
bool flagcommand_2 = false;                                                         // Setting flag command 2 to false.
char *msg;                                                                          // Variable to save a char data chain.
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
    //-----------------------------------------------
    // Configuring LED 01 and LED 02:
    GPIO_SetupPinMux(BLINKY_LED_GPIO_01, GPIO_MUX_CPU1, 0);                         // Configure role of Pin 12 (BLINKY_LED_GPIO_01).
    GPIO_SetupPinOptions(BLINKY_LED_GPIO_01, GPIO_OUTPUT, GPIO_PUSHPULL);           // Set behavior of Pin 12.
    GPIO_WritePin(BLINKY_LED_GPIO_01, 1);                                           // Turn LED GPIO 1 to OFF.
    //-----------------------------------------------
    GPIO_SetupPinMux(BLINKY_LED_GPIO_02, GPIO_MUX_CPU1, 0);                         // Configure role of Pin 13 (BLINKY_LED_GPIO_02).
    GPIO_SetupPinOptions(BLINKY_LED_GPIO_02, GPIO_OUTPUT, GPIO_PUSHPULL);           // Set behavior of Pin 13.
    GPIO_WritePin(BLINKY_LED_GPIO_02, 1);                                           // Turn LED GPIO 1 to OFF.
    //-----------------------------------------------
    // Initializing the pins 84 and 85 for the SCI-A port (UART Communication - UART 0):
    EALLOW;
    GpioCtrlRegs.GPCMUX2.bit.GPIO84 = 1;
    GpioCtrlRegs.GPCMUX2.bit.GPIO85 = 1;
    GpioCtrlRegs.GPCGMUX2.bit.GPIO84 = 1;
    GpioCtrlRegs.GPCGMUX2.bit.GPIO85 = 1;
    EDIS;

    // Step 3. Clear all interrupts and initialize PIE vector table:
    // Disable CPU interrupts
    DINT;

    // Initialize the PIE control registers to their default state.
    // The default state is all PIE interrupts disabled and flags
    // are cleared.
    // This function is found in the F2837xS_PieCtrl.c file.
    InitPieCtrl();

    // Initializing SCIA:
    scia_fifo_init();                                                               // Initialize the SCIA FIFO.
    scia_init();                                                                    // Initialize the SCIA.
    msg = "baqumau -- baqumau\n\0";

    // Disable CPU interrupts and clear all CPU interrupt flags:
    IER = 0x0000;
    IFR = 0x0000;

    // Initialize the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    // This will populate the entire table, even if the interrupt
    // is not used in this example.  This is useful for debug purposes.
    // The shell ISR routines are found in F2837xS_DefaultIsr.c.
    // This function is found in F2837xS_PieVect.c.
    InitPieVectTable();

    // Interrupts that are used in this example are re-mapped to
    // ISR functions found within this file.
    EALLOW;                                                                         // This is needed to write to EALLOW protected registers.
    PieVectTable.TIMER0_INT = &cpu_timer0_isr;
    PieVectTable.TIMER1_INT = &cpu_timer1_isr;
    PieVectTable.TIMER2_INT = &cpu_timer2_isr;
    EDIS;                                                                           // This is needed to disable write to EALLOW protected registers.

    // Step 4. Initialize the Device Peripheral. This function can be
    //         found in F2837xS_CpuTimers.c
    InitCpuTimers();                                                                // Initialize the CPU Timers.

    // Configure CPU-Timer 0, 1, and 2 to interrupt every second:
    // Timer 0 -> 200MHz CPU Frequency, 1/200 seconds of Period (in uSeconds):
    ConfigCpuTimer(&CpuTimer0, 200.0f, 5000.0f);
    // Timer 1 -> 200MHz CPU Frequency, 1/10 seconds of Period (in uSeconds):
    ConfigCpuTimer(&CpuTimer1, 200.0f, 100000.0f);
    // Timer 2 -> 200MHz CPU Frequency, 1/250 seconds of Period (in uSeconds):
    ConfigCpuTimer(&CpuTimer2, 200.0f, 4000.0f);

    // To ensure precise timing, use write-only instructions to write to the entire register. Therefore, if any
    // of the configuration bits are changed in ConfigCpuTimer and InitCpuTimers (in F2837xS_cputimervars.h), the
    // below settings must also be updated.
    CpuTimer0Regs.TCR.all = 0x4000;                                                 // Use write-only instruction to set TSS bit = 0.
    CpuTimer1Regs.TCR.all = 0x4000;                                                 // Use write-only instruction to set TSS bit = 0.
    CpuTimer2Regs.TCR.all = 0x4000;                                                 // Use write-only instruction to set TSS bit = 0.

    // Step 5. User specific code, enable interrupts:

    // Enable CPU int1 which is connected to CPU-Timer 0, CPU int13
    // which is connected to CPU-Timer 1, and CPU int 14, which is connected
    // to CPU-Timer 2:
    IER |= M_INT1;
    IER |= M_INT13;
    IER |= M_INT14;

    // Enable TINT0 in the PIE: Group 1 interrupt 7:
    PieCtrlRegs.PIEIER1.bit.INTx7 = 1;

    // Enable global Interrupts and higher priority real-time debug events:
    EINT;  // Enable Global interrupt INTM
    ERTM;  // Enable Global real-time interrupt DBGM

    // Step 6. IDLE loop. Just sit and loop forever (optional):
    for(;;){
        //
        NOP;                                                                        // No Operation (burn a cycle).
    }
}
//-----------------------------------------------------------------------------------------------------------------------
// Putting function definitions here:
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through CPU timer 0:
__interrupt void cpu_timer0_isr(void){
    CpuTimer0.InterruptCount++;
    //-----------------------------------------------
    // Acknowledge this interrupt to receive more interrupts from group 1
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through CPU timer 1:
__interrupt void cpu_timer1_isr(void){
    CpuTimer1.InterruptCount++;
    // The CPU acknowledges the interrupt.
    if(flagcommand_1 && CpuTimer1.InterruptCount == 10){
        GPIO_WritePin(BLINKY_LED_GPIO_01, 0);                                       // Turn LED GPIO 1 to ON.
        flagcommand_1 = false;                                                      // Set flag command 1 to FALSE.
        CpuTimer1.InterruptCount = 0;                                               // Reset Timer 1 counter.
    }
    else if(!flagcommand_1 && CpuTimer1.InterruptCount == 10){
        GPIO_WritePin(BLINKY_LED_GPIO_01, 1);                                       // Turn LED GPIO 1 to OFF.
        flagcommand_1 = true;                                                       // Set flag command 1 to TRUE.
        CpuTimer1.InterruptCount = 0;                                               // Reset Timer 1 counter.
    }
    scia_msg(msg);                                                                  // Send message via SCIA.
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through CPU timer 2:
__interrupt void cpu_timer2_isr(void){
    CpuTimer2.InterruptCount++;
    // The CPU acknowledges the interrupt.
    if(flagcommand_2 && CpuTimer2.InterruptCount == 250){
        GPIO_WritePin(BLINKY_LED_GPIO_02, 0);                                       // Turn LED GPIO 2 to ON.
        flagcommand_2 = false;                                                      // Set flag command 2 to FALSE.
        CpuTimer2.InterruptCount = 0;                                               // Reset Timer 2 counter.
    }
    else if(!flagcommand_2 && CpuTimer2.InterruptCount == 250){
        GPIO_WritePin(BLINKY_LED_GPIO_02, 1);                                       // Turn LED GPIO 2 to OFF.
        flagcommand_2 = true;                                                       // Set flag command 2 to TRUE.
        CpuTimer2.InterruptCount = 0;                                               // Reset Timer 2 counter.
    }
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to initialize SCIA (8-bit word, baud rate 0x000F, default, 1 STOP bit, no parity):
void scia_init(){
    // Note: Clocks were turned on to the SCIA peripheral
    // in the InitSysCtrl() function.
    SciaRegs.SCICCR.all = 0x0007;                                                   // 1 stop bit, no loop-back,
                                                                                    // no parity, 8 char bits,
                                                                                    // asynchronous mode, idle-line protocol.
    SciaRegs.SCICTL1.all = 0x0003;                                                  // Enable TX, RX, internal SCICLK,
                                                                                    // disable RX ERR, SLEEP, TXWAKE.
    SciaRegs.SCICTL2.bit.TXINTENA = 1;
    SciaRegs.SCICTL2.bit.RXBKINTENA = 1;
    //-----------------------------------------------
    // Setting baud rate:
    SciaRegs.SCIHBAUD.all = 0x0000;                                                 // 115200 baud @LSPCLK = 22.5MHz (90 MHz SYSCLK).
    SciaRegs.SCILBAUD.all = 53;
    //-----------------------------------------------
    SciaRegs.SCICTL1.all = 0x0023;                                                  // Relinquish SCI from Reset.
    //-----------------------------------------------
    return;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to initialize the SCIA FIFO:
void scia_fifo_init(void){
    SciaRegs.SCIFFTX.all = 0xE040;
    SciaRegs.SCIFFRX.all = 0x2044;
    SciaRegs.SCIFFCT.all = 0x0;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to transmit a character through the SCIA:
void scia_xmit(int a){
    while(SciaRegs.SCIFFTX.bit.TXFFST != 0)
    SciaRegs.SCITXBUF.all = a;
}
//-----------------------------------------------------------------------------------------------------------------------
// Function to transmit message via SCIA:
void scia_msg(char *msg){
    int i;
    i = 0;
    while(msg[i] != '\0'){
        scia_xmit(msg[i]);
        i++;
    }
}
//-----------------------------------------------------------------------------------------------------------------------
// No more.
//-----------------------------------------------------------------------------------------------------------------------
