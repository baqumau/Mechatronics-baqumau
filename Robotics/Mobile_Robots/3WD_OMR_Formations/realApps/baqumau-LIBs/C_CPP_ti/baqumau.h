/* This Library include common usage structures and functions with useful configurations. These functions
were implemented for facilitating posterior code creations.*/
//---------------------------------------------------------------------------------------------------------------
#ifndef _baqumau_H_
#define _baqumau_H_
//---------------------------------------------------------------------------------------------------------------
// Including libraries that allows functionality of this script:
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <float.h>
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
// Data structure to get values from receiving streaming data set or configure sending streaming data set via FIFO peripheral:
typedef struct{
    // RX structure:
    int RX_bufferSize;                                                          // Size of developed buffer (receiving data).
    int RX_bufferIndex;                                                         // Index within developed buffer (receiving data).
    char *RX_charBuffer;                                                        // Buffer to temporarily store a char-type streaming data set (receiving data).
    int identifier;                                                             // Data set frame identifier.
    Matrix3 MAT3;                                                               // Arranged values of data set streaming within a 3D matrix.
    // TX structure:
    int TX_bufferSize;                                                          // Size of developed buffer (sending data).
    int TX_bufferIndex;                                                         // Index within developed buffer (sending data).
    char *TX_charBuffer;                                                        // Buffer to temporarily store a char-type streaming data set (sending data).
    int strLength;                                                              // Length of the streaming data set to transmit.
    //-----------------------------------------------
    bool *flag;                                                                 // Execution flag.
} Data_Struct;
//---------------------------------------------------------------------------------------------------------------
// Declaration of functions library:
//---------------------------------------------------------------------------------------------------------------
// Creating 3d matrix structure:
extern bool allocateMatrix3(Matrix3 *MAT3, int xSize, int ySize, int zSize);
// Function to free memory for the 3d matrix in the structure:
extern void freeMatrix3(Matrix3 *MAT3);
// Creating data structure that will be used to arrange streaming data set:
extern Data_Struct createDataStruct(int rx_bufferSize, int xSize, int ySize, int zSize, int tx_bufferSize);
// initializing char-type buffer data (receiving data):
extern void init_RX_charBuffer(Data_Struct *DAT);
// initializing char-type buffer data (sending data):
extern void init_TX_charBuffer(Data_Struct *DAT);
// Adding characters to buffer:
extern void add_2_RX_charBuffer(Data_Struct *DAT, char c);
// Classify char-type data from developed buffer within data structure as DAT:
extern void classify_RX_charBuffer(Data_Struct *DAT);
// A helper function to reverse a string:
extern void reverse(char *str, int len);
// Utility function to convert an integer to a string:
extern int intToStr(unsigned long x, char str[], int d);
// Convert a floating-point number (such as float or double) to a string representation:
extern void ftoa(float num, char *res, int afterpoint);
// Function to initialize whichever char-type data string:
extern void initString(char *str, int strSize);
// Function to shift the characters of a string backward in a data set:
extern void shiftCharsBackward(char *str, int bytes);
//---------------------------------------------------------------------------------------------------------------
#endif /* _baqumau_H_ */
//---------------------------------------------------------------------------------------------------------------
