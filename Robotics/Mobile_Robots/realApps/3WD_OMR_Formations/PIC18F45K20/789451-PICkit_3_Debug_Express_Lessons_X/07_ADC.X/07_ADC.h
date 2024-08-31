// PICkit 3 Lesson 07 file header

#ifndef ADC_H
#define ADC_H

/** D E C L A R A T I O N S **************************************************/
typedef enum { LEFT2RIGHT,
               RIGHT2LEFT} LEDDirections;

/** D E F I N I T I O N S ****************************************************/
#define Switch_Pin      PORTBbits.RB0
#define DetectsInARow   5

/** E X T E R N S ************************************************************/
// declare variables accessible by other files.

/** P R O T O T Y P E S ******************************************************/
void Timer0_Init(void);
void ADC_Init(void);
unsigned char ADC_Convert(void);

#endif