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
// Including libraries to the main program:
#include <math.h>
#include <src/baqumau/3WD_OMRs_Controllers.h>                           // Controllers library.
#include <src/baqumau/3WD_OMRs_References.h>                            // Reference library.
#include <src/baqumau/baqumau.h>                                        // My library.
#include "F28x_Project.h"                                               // Device Header file and Examples Include File.
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
   GPIO_SetupPinMux(12, GPIO_MUX_CPU1, 0);
   GPIO_SetupPinOptions(12, GPIO_OUTPUT, GPIO_PUSHPULL);
   GPIO_SetupPinMux(13, GPIO_MUX_CPU1, 0);
   GPIO_SetupPinOptions(13, GPIO_OUTPUT, GPIO_PUSHPULL);

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

// Enable global Interrupts and higher priority real-time debug events:
   EINT;  // Enable Global interrupt INTM
   ERTM;  // Enable Global realtime interrupt DBGM

// Step 6. IDLE loop. Just sit and loop forever (optional):
   for(;;)
   {
        //
        // Turn on LED
        //
        GPIO_WritePin(12, 0);
        GPIO_WritePin(13, 1);
        //
        // Delay for a bit.
        //
        DELAY_US(1000*500/2);

        //
        // Turn off LED
        //
        GPIO_WritePin(12, 1);
        GPIO_WritePin(13, 0);
        //
        // Delay for a bit.
        //
        DELAY_US(1000*500/2);

   }

}
