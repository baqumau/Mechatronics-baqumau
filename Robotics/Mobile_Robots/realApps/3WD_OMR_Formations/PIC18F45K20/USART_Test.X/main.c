/*------------------------------------------------------------------------------
 * File:   main.c
 * Author: baqumau
 *
 * Created on September 1, 2024, 9:08 AM
 *
 * This program will be used to test USART communication of PIC18F45K20.
 */
//------------------------------------------------------------------------------
// C O N F I G U R A T I O N    B I T S:
// CONFIG1H:
#pragma config FOSC = INTIO67                                                   // Oscillator Selection bits (HS oscillator, PLL enabled (Clock Frequency = 4 x FOSC1))
#pragma config FCMEN = OFF                                                      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF                                                       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)
// CONFIG2L:
#pragma config PWRT = OFF                                                       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = SBORDIS                                                  // Brown-out Reset Enable bits (Brown-out Reset enabled in hardware only (SBOREN is disabled))
#pragma config BORV = 18                                                        // Brown Out Reset Voltage bits (VBOR set to 1.8 V nominal)
// CONFIG2H:
#pragma config WDTEN = OFF                                                      // Watchdog Timer Enable bit (WDT is controlled by SWDTEN bit of the WDTCON register)
#pragma config WDTPS = 32768                                                    // Watchdog Timer Postscale Select bits (1:32768)
// CONFIG3H:
#pragma config CCP2MX = PORTC                                                   // CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
#pragma config PBADEN = OFF                                                     // PORTB A/D Enable bit (PORTB<4:0> pins are configured as digital I/O on Reset)
#pragma config LPT1OSC = OFF                                                    // Low-Power Timer1 Oscillator Enable bit (Timer1 configured for higher power operation)
#pragma config HFOFST = ON                                                      // HFINTOSC Fast Start-up (HFINTOSC starts clocking the CPU without waiting for the oscillator to stablize.)
#pragma config MCLRE = ON                                                       // MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)
// CONFIG4L:
#pragma config STVREN = ON                                                      // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config LVP = OFF                                                        // Single-Supply ICSP Enable bit (Single-Supply ICSP disabled)
#pragma config XINST = OFF                                                      // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))
//------------------------------------------------------------------------------
// L I B R A R I E S:
#include <xc.h>
#include <string.h>
#include <stdio.h>
//------------------------------------------------------------------------------
// C O N S T A N T    V A R I A B L E S:
#define _XTAL_FREQ 64000000
#define desired_baudrate 115200                                                 // Desired baud rate for USART communication.
//------------------------------------------------------------------------------
// F U N C T I O N    D E C L A R A T I O N S:
//------------------------------------------------------------------------------
// Initializing USART module:
void initialize_USART(void);
//------------------------------------------------------------------------------
// M A I N    C O D E:
void main(void){
    initialize_USART();                                                         // Initialize USART module.
    NOP();                                                                      // No operation.
    return;
}
//------------------------------------------------------------------------------
// F U N C T I O N    D E F I N I T I O N S:
//------------------------------------------------------------------------------
// Initializing USART module:
void initialize_USART(void){
    // Configuring TX and RX pins:
    TRISCbits.RC6 = 0;                                                          // TX output.
    TRISCbits.RC7 = 1;                                                          // RX input.
    // Setting TXSTA (Transmit Status and Control Register):
    TXSTAbits.SYNC = 0;                                                         // Asynchronous mode.
    TXSTAbits.TX9 = 0;                                                          // 8 bits transmission.
    TXSTAbits.BRGH = 1;                                                         // Set HIGH Baud rate.
    TXSTAbits.TXEN = 1;                                                         // Enable transmitter.
    TXSTAbits.SENDB = 0;                                                        // Disable break.
    // Setting RCSTA (Receive Status and Control Register):
    RCSTAbits.SPEN = 1;                                                         // Serial Port enabled  (configures RX/DT and TX/CK pins as serial port pins).
    RCSTAbits.RX9 = 0;                                                          // 8 bits reception.
    RCSTAbits.CREN = 1;                                                         // Enables Receiver.
    // Setting BAUDCON (Baud Rate Control Register):
    BAUDCON = 0x0;                                                              // Clear BAUDCON.
    BAUDCONbits.BRG16 = 1;                                                      // 16 bits baud rate generator.
    // Setting desired baud rate:
    uint16_t baudrate_reg = _XTAL_FREQ/desired_baudrate/4 - 1;                  // Calculating baud rate register with BRG16 = 1 and BRGH = 1;
    SPBRG = 0x8A;                                                               // Set to 115200 baud rate, 64 Mhz of FOSC, High Speed and BRG16.
}