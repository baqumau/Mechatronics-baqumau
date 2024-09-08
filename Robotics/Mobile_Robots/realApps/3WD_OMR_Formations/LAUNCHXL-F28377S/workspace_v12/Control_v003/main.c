//#######################################################################################################################
// PROJECT:     Control_v002.
// DESCRIP:     Basis embedded system to control OMRs formations.
// TITLE:       Observer-based Robust Cluster Space Control for Omni-directional Robot Formations.
//
// OBJECTIVES:
// 1. Blink functionality of LED 09 and LED 10.
// 2. Timer interrupt to 250Hz.
//
// LAUNCHXL-F28377S works to 200 MHz...
//
//#######################################################################################################################
// $TI Release: F2837xS Support Library v130 $
// $Release start: Wed May 22 of 2024 $
//#######################################################################################################################
// Defining configuration macros:
#define DEVICE_SYSCLK_FREQ 200000000
#define BLINKY_LED_GPIO_01    12
#define BLINKY_LED_GPIO_02    13
//-----------------------------------------------------------------------------------------------------------------------
// Including libraries to the main program:
#include <math.h>
#include <stdbool.h>
#include <3WD_OMRs_Controllers.h>                                               // Controllers library.
#include <3WD_OMRs_References.h>                                                // Reference library.
#include <baqumau.h>                                                            // My library.
#include "F28x_Project.h"                                                       // Device Header file and Examples Include File.
//-----------------------------------------------------------------------------------------------------------------------
// Putting function declarations here:
//-----------------------------------------------------------------------------------------------------------------------
// Function to generate interrupt service through CPU timers 1, 2 and 3:
__interrupt void cpu_timer0_isr(void);
__interrupt void cpu_timer1_isr(void);
__interrupt void cpu_timer2_isr(void);
//-----------------------------------------------------------------------------------------------------------------------
// Global variables:
bool flagcommand_1 = false;                                                     // Setting flag command 1 to false.
bool flagcommand_2 = false;                                                     // Setting flag command 2 to false.
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
    // Configuring LED 01 and LED 02:
    GPIO_SetupPinMux(BLINKY_LED_GPIO_01, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(BLINKY_LED_GPIO_01, GPIO_OUTPUT, GPIO_PUSHPULL);
    GPIO_WritePin(BLINKY_LED_GPIO_01, 1);                                       // Turn LED GPIO 1 to OFF.
    //---------------------------------------------------------
    GPIO_SetupPinMux(BLINKY_LED_GPIO_02, GPIO_MUX_CPU1, 0);
    GPIO_SetupPinOptions(BLINKY_LED_GPIO_02, GPIO_OUTPUT, GPIO_PUSHPULL);
    GPIO_WritePin(BLINKY_LED_GPIO_02, 1);                                       // Turn LED GPIO 1 to OFF.

    // Step 3. Clear all interrupts and initialize PIE vector table:
    // Disable CPU interrupts
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
    // is not used in this example.  This is useful for debug purposes.
    // The shell ISR routines are found in F2837xS_DefaultIsr.c.
    // This function is found in F2837xS_PieVect.c.
    InitPieVectTable();

    // Interrupts that are used in this example are re-mapped to
    // ISR functions found within this file.
    EALLOW;                                                                     // This is needed to write to EALLOW protected registers.
    PieVectTable.TIMER0_INT = &cpu_timer0_isr;
    PieVectTable.TIMER1_INT = &cpu_timer1_isr;
    PieVectTable.TIMER2_INT = &cpu_timer2_isr;
    EDIS;                                                                       // This is needed to disable write to EALLOW protected registers.

    // Step 4. Initialize the Device Peripheral. This function can be
    //         found in F2837xS_CpuTimers.c
    InitCpuTimers();                                                            // Initialize the CPU Timers.

    // Configure CPU-Timer 0, 1, and 2 to interrupt every second:
    // Timer 0 -> 200MHz CPU Frequency, 1/250 seconds of Period (in uSeconds):
    ConfigCpuTimer(&CpuTimer0, 200.0f, 4000.0f);
    // Timer 1 -> 200MHz CPU Frequency, 1/10 seconds of Period (in uSeconds):
    ConfigCpuTimer(&CpuTimer1, 200.0f, 100000.0f);
    // Timer 2 -> 200MHz CPU Frequency, 1/250 seconds of Period (in uSeconds):
    ConfigCpuTimer(&CpuTimer2, 200.0f, 4000.0f);

    // To ensure precise timing, use write-only instructions to write to the entire register. Therefore, if any
    // of the configuration bits are changed in ConfigCpuTimer and InitCpuTimers (in F2837xS_cputimervars.h), the
    // below settings must also be updated.
    CpuTimer0Regs.TCR.all = 0x4000;                                             // Use write-only instruction to set TSS bit = 0.
    CpuTimer1Regs.TCR.all = 0x4000;                                             // Use write-only instruction to set TSS bit = 0.
    CpuTimer2Regs.TCR.all = 0x4000;                                             // Use write-only instruction to set TSS bit = 0.

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
        NOP;                                                                    // No Operation (burn a cycle).
    }
}
//-----------------------------------------------------------------------------------------------------------------------
// Putting function definitions here:
//-----------------------------------------------------------------------------------------------------------------------
__interrupt void cpu_timer0_isr(void){
    CpuTimer0.InterruptCount++;

    // Acknowledge this interrupt to receive more interrupts from group 1
    PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;
}

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
}

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
// No more.
//-----------------------------------------------------------------------------------------------------------------------
