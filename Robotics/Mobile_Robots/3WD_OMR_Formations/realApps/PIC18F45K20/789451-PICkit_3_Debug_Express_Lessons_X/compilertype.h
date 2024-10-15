/*
** File: compilertype.h
**
** Description:
**
**  Determine the type of Microchip C compiler
**  used to build this file. 
**
**  Includes the header required by the type of compiler found.
**
**  Defines COMPILER_XC8 when Microchip XC8 compiler is used
**  Defines COMPILER_HTC when HI-TECH PICC18 compiler is used
**  Defines COMPILER_C18 when Microchip C18 compiler is used
**
**  The application should used these symbols to build the
**  appropriate linkages for the Interrupt Service Routines.
**
*/
#define COMPILER_NOT_FOUND
    
#ifdef __XC8
#undef COMPILER_NOT_FOUND
#define COMPILER_XC8
#include <xc.h>
#else
 #ifdef __PICC18__
 #undef COMPILER_NOT_FOUND
 #define COMPILER_HTC
 #include <htc.h>
 #pragma config IDLOC0 = 0xF
 #pragma config IDLOC1 = 0xF
 #pragma config IDLOC2 = 0xF
 #pragma config IDLOC3 = 0xF
 #pragma config IDLOC4 = 0xF
 #pragma config IDLOC5 = 0xF
 #pragma config IDLOC6 = 0xF
 #pragma config IDLOC7 = 0xF
 #else
  #if __18CXX
  #undef COMPILER_NOT_FOUND
  #define COMPILER_C18
  #include <p18cxxx.h>
  #endif
 #endif
#endif
    
#ifdef COMPILER_NOT_FOUND
#error "Unknown compiler. Code builds with XC8, HTC or C18"
#endif
