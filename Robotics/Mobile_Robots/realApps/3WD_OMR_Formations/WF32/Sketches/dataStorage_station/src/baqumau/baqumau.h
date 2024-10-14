/* This Library includes common usage structs and functions several configurations. Several functions
will be implemented to facilite posterior implementations.*/
//---------------------------------------------------------------------------------------------------------------
#ifndef _baqumau_H_
#define _baqumau_H_
//---------------------------------------------------------------------------------------------------------------
// Including libraries that allows functionality of this script:
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <float.h>
#include <xc.h>                                                                 // Header file that allows code in the source file to access compiler-specific or device-specific features.
                                                                                // Based on your selected device, the compiler sets macros that allow xc.h to vector to the correct device-specific
                                                                                // header file.
#include "3WD_OMRs_Controllers.h"
//---------------------------------------------------------------------------------------------------------------
// Three-dimension matrix structure to arrange values from whichever streming data set:
typedef struct{
    int xSize;                                                                  // First dimension [*]** of data member.
    int ySize;                                                                  // Second dimension *[*]* of data member.
    int zSize;                                                                  // Third dimension **[*] of data member.
    char ***data;                                                               // Arranged values of data set streaming.
} Matrix3;
//---------------------------------------------------------------------------------------------------------------
// Data structure to get values from streming data set:
typedef struct{
    int bufferSize;                                                             // Size of developed buffer.
    int bufferIndex;                                                            // Index within developed buffer.
    char *charBuffer;                                                           // Buffer to temporarily store a char-type streaming data set.
    int identifier;                                                             // Data set frame identifier.
    Matrix3 MAT3;                                                               // Arranged values of data set streaming within a 3D matrix.
    bool *flag;                                                                 // Execution flag.
} Data_Struct;
//---------------------------------------------------------------------------------------------------------------
// Declaration of functions library:
//---------------------------------------------------------------------------------------------------------------
// Creating 3d matrix structure:
extern bool allocateMatrix3(Matrix3 *MAT3, int xSize, int ySize, int zSize);
// Function to free memory for the 3d matrix in the struct:
extern void freeMatrix3(Matrix3 *MAT3);
// Creating data structure that will be used to arrange streaming data set:
extern Data_Struct createDataStruct(int bufferSize, int xSize, int ySize, int zSize);
// initializing char-type buffer data:
extern void init_charBuffer(Data_Struct *DAT);
// Adding characters to buffer:
extern void add_2_charBuffer(Data_Struct *DAT, char c);
// Classify char-type data from developed buffer within data structure as DAT:
extern void classify_charBuffer(Data_Struct *DAT);
// A helper function to reverse a string:
extern void reverse(char *str, int len);
// Utility function to convert an integer to a string:
extern int intToStr(int x, char str[], int d);
// Convert a floating-point number (such as float or double) to a string representation:
extern void ftoa(float num, char *res, int afterpoint);
// Function to initialize whichever char-type data string:
extern void initString(char *str, int strSize);
//---------------------------------------------------------------------------------------------------------------
#endif /* _baqumau_H_ */
//---------------------------------------------------------------------------------------------------------------
