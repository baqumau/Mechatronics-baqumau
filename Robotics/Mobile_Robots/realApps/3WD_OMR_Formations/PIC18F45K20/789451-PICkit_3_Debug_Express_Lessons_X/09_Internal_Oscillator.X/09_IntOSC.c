//******************************************************************************
//Software License Agreement                                         
//                                                                    
//The software supplied herewith by Microchip Technology             
//Incorporated (the "Company") is intended and supplied to you, the  
//Company’s customer, for use solely and exclusively on Microchip    
//products. The software is owned by the Company and/or its supplier,
//and is protected under applicable copyright laws. All rights are   
//reserved. Any use in violation of the foregoing restrictions may   
//subject the user to criminal sanctions under applicable laws, as   
//well as to civil liability for the breach of the terms and         
//conditions of this license.                                        
//                                                                    
//THIS SOFTWARE IS PROVIDED IN AN "AS IS" CONDITION. NO WARRANTIES,  
//WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED  
//TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A       
//PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. THE COMPANY SHALL NOT,  
//IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL OR         
//CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.       
// *******************************************************************
// PIC18F45K20 PICkit 3 Debug Express Lesson 9 - Internal Oscillator
//
// This lesson demonstrates changing the speed of the microcontroller
// clock using the internal clock block from 250kHz to 64MHz.
//
// *******************************************************************
// *    See included documentation for Lesson instructions           *
// *******************************************************************

/** C O N F I G U R A T I O N   B I T S ******************************/

#pragma config FOSC = INTIO67, FCMEN = OFF, IESO = OFF                      // CONFIG1H
#pragma config PWRT = OFF, BOREN = SBORDIS, BORV = 30                       // CONFIG2L
#pragma config WDTEN = OFF, WDTPS = 32768                                   // CONFIG2H
#pragma config LPT1OSC = ON, PBADEN = ON, CCP2MX = PORTC                    // CONFIG3H
#pragma config STVREN = ON, LVP = OFF, XINST = OFF                          // CONFIG4L
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF                   // CONFIG5L
#pragma config CPB = OFF, CPD = OFF                                         // CONFIG5H
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF               // CONFIG6L
#pragma config WRTB = OFF, WRTC = OFF, WRTD = OFF                           // CONFIG6H
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF           // CONFIG7L
#pragma config EBTRB = OFF                                                  // CONFIG7H

#ifdef __DEBUG
#warning MCLR is used as RESET not a GPIO input
#else
#pragma config MCLRE = OFF
#endif

/** I N C L U D E S **************************************************/
#include "..\compilertype.h"
#include <delays.h>
#include "09_IntOSC.h"  // header file

/** V A R I A B L E S *************************************************/
unsigned char LED_Count = 0;    // 8-bit variable
unsigned char SwitchDelay = 1;  // delay time to "debounce" switch
IntOSCFreq ClockSpeed = C_250kHz;

/** D E C L A R A T I O N S *******************************************/

void main (void)
{
  // Init I/O
    TRISD = 0b00000000;         // PORTD bits 7:0 are all outputs (0)
    TRISEbits.TRISE0 = 1;       // TRISE0 input

    INTCON2bits.RBPU = 0;       // enable PORTB internal pullups
    WPUBbits.WPUB0 = 1;         // enable pull up on RB0
    // Set initial clock speed (250kHz)
    SetIntOSC(&ClockSpeed);

    // Init switch and turn on interrupts
    SetupINT0Switch();
    EnableInterrupts();

    while (1)
    { // delay and count on LEDs here.  Interrupt handles switch and freq changes

        LATD = LED_Count++;         // output count to PORTD LEDs
        Delay1KTCYx(64);            // delay 64,000 cycles or about 1 sec at 250kHz 
    }
}

void SetupINT0Switch(void)
{   // Set up switch interrupt on INT0
    INTCON2bits.INTEDG0 = 0;    // interrupt on falling edge of INT0 (switch pressed)
    INTCONbits.INT0IF = 0;      // ensure flag is cleared
    INTCONbits.INT0IE = 1;      // enable INT0 interrupt
}

void EnableInterrupts(void)
{   // Set up global interrupts
    RCONbits.IPEN = 0;          // Disable priority levels on interrupts
    INTCONbits.PEIE = 1;        // Peripheral interrupts allowed (but none are used)
    INTCONbits.GIE = 1;         // Interrupting enabled.
}

void SetIntOSC(IntOSCFreq *ClockSet)
{   // This function sets the internal oscillator to the frequency of
    // the ClockSet argument variable, and then increments ClockSet
    // to the next supported frequency.
    switch (*ClockSet)
    {
        case C_250kHz:
            OSCCON = 0x10;          // IRCFx = 001
            OSCTUNEbits.PLLEN = 0;  // x4 PLL disabled
            *ClockSet = C_500kHz;
            SwitchDelay = 1;
            break;

        case C_500kHz:
            OSCCON = 0x20;          // IRCFx = 010
            OSCTUNEbits.PLLEN = 0;  // x4 PLL disabled
            *ClockSet = C_1MHz;
            SwitchDelay = 2;
            break;

        case C_1MHz:
            OSCCON = 0x30;          // IRCFx = 011
            OSCTUNEbits.PLLEN = 0;  // x4 PLL disabled
            *ClockSet = C_2MHz;
            SwitchDelay = 4;
            break;

        case C_2MHz:
            OSCCON = 0x40;          // IRCFx = 100
            OSCTUNEbits.PLLEN = 0;  // x4 PLL disabled
            *ClockSet = C_4MHz;
            SwitchDelay = 8;
            break;

        case C_4MHz:
            OSCCON = 0x50;          // IRCFx = 101
            OSCTUNEbits.PLLEN = 0;  // x4 PLL disabled
            *ClockSet = C_8MHz;
            SwitchDelay = 16;
            break;

        case C_8MHz:
            OSCCON = 0x60;          // IRCFx = 110
            OSCTUNEbits.PLLEN = 0;  // x4 PLL disabled
            *ClockSet = C_16MHz;
            SwitchDelay = 32;
            break;

        case C_16MHz:
            OSCCON = 0x70;          // IRCFx = 111
            OSCTUNEbits.PLLEN = 0;  // x4 PLL disabled
            *ClockSet = C_32MHz;
            SwitchDelay = 64;
            break;

        case C_32MHz:
            OSCCON = 0x60;          // IRCFx = 110 (8 MHz)
            OSCTUNEbits.PLLEN = 1;  // x4 PLL enabled = 32MHz
            *ClockSet = C_64MHz;
            SwitchDelay = 128;
            break;

        case C_64MHz:
            OSCCON = 0x70;          // IRCFx = 111 (16 MHz)
            OSCTUNEbits.PLLEN = 1;  // x4 PLL enabled = 64MHz
            *ClockSet = C_250kHz;
            SwitchDelay = 255;
            break;

        default:
            // should never get here, but just in case
            OSCCON = 0x10;          // IRCFx = 001
            OSCTUNEbits.PLLEN = 0;  // x4 PLL disabled
            *ClockSet = C_500kHz;
            break;
    }
}


/** I N T E R R U P T S ***********************************************/

// -------------------- Iterrupt Service Routines --------------------------
#ifdef COMPILER_C18
#pragma interrupt C18_HighISR_Handler  // "interrupt" pragma also for high priority
void C18_HighISR_Handler(void)
#endif

#ifdef COMPILER_XC8
void interrupt XC8_HighISR_Handler(void)
#endif
{
    int i;

    // Check to see what caused the interrupt
    // (Necessary when more than 1 interrupt at a priority level)

    // Check for INT0 interrupt
    if (INTCONbits.INT0IF)
    {
        // Delay about 50ms regardless of frequency to debounce switch.
        // NOTE: a delay function from delay.h isn't used as they are 
        // inline assembly and inline assembly in an interrupt routine
        // causes a very long context save/restore since the compiler
        // doesn't know what resources are being used and so saves everything.
        i = 125 * SwitchDelay;
        while(i)
        {
            i--;
        }
        

        // clear (reset) flag
        INTCONbits.INT0IF = 0;

        if (PORTBbits.RB0 == 0)
        { // if it's still pressed after 100ms delay.
            // Change oscilator frequency
            SetIntOSC(&ClockSpeed);
        }
    }
    // Check for another interrupt, examples:
    // if (PIR1bits.TMR1IF)     // Timer 1
    // if (PIR1bits.ADIF)       // ADC

}  // return from high-priority interrupt

#ifdef COMPILER_C18
//----------------------------------------------------------------------------
// High priority interrupt vector

#pragma code C18_HighISR_Vector = 0x08
void C18_HighISR_Vector (void)
{
  _asm
    goto C18_HighISR_Handler //jump to interrupt routine
  _endasm
}
#pragma code
#endif
