// PICkit 3 11 Lesson file header

#ifndef PROGRAM_MEMORY_H
#define PROGRAM_MEMORY_H

/** D E C L A R A T I O N S **************************************************/


/** D E F I N I T I O N S ****************************************************/


/** E X T E R N S ************************************************************/
// declare variables accessible by other files.

/** P R O T O T Y P E S ******************************************************/
unsigned char ProgMemRdAddress(unsigned int address);
void ProgMemErase64(unsigned int address);
void ProgMemWr32(unsigned int address, unsigned char *buffer_ptr);

#endif
