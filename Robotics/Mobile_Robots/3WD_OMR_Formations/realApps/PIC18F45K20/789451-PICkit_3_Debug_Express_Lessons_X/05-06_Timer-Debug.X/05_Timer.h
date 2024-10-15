// PICkit 3 Lesson 05-06 file header

#ifndef TIMER_H
#define TIMER_H

/** D E C L A R A T I O N S **************************************************/
typedef enum { LEFT2RIGHT,
               RIGHT2LEFT} LEDDirections;



/** D E F I N I T I O N S ****************************************************/
#define Switch_Pin      PORTBbits.RB0
#define DetectsInARow   5

/** E X T E R N S ************************************************************/
// declare variables accessible by other files.

/** P R O T O T Y P E S ******************************************************/
// function prototypes
#endif