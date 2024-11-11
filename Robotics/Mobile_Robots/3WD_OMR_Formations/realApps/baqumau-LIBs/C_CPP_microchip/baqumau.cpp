// Including libraries to execute the programmed functions:
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <math.h>
#include <float.h>
#include <xc.h>                                                                             // Header file that allows code in the source file to access compiler-specific or device-specific features.
                                                                                            // Based on your selected device, the compiler sets macros that allow xc.h to vector to the correct device-specific
                                                                                            // header file.
#include "baqumau.h"
//---------------------------------------------------------------------------------------------------------------
// Developing references builder functions:
//---------------------------------------------------------------------------------------------------------------
// Creating 3d matrix structure:
bool allocateMatrix3(Matrix3 *MAT3, int xSize, int ySize, int zSize){
    int i, j, k, l;                                                                         // Declaration of i, j, k, and l as integer variables.
    MAT3->xSize = xSize;                                                                    // Assign value for size of 3d matrix along x: MAT(x*y*z).
    MAT3->ySize = ySize;                                                                    // Assign value for size of 3d matrix along y: MAT(x*y*z).
    MAT3->zSize = zSize;                                                                    // Assign value for size of 3d matrix along z: MAT(x*y*z).
    // Allocate memory for the x-rows pointers:
    MAT3->data = (char ***)malloc(xSize * sizeof(char **));
    if(MAT3->data == NULL){
        return false;                                                                       // Memory allocation failed.
    }
    // Allocate memory for each x-row:
    for(i = 0; i < xSize; i++){
        MAT3->data[i] = (char **)malloc(ySize * sizeof(char *));
        if(MAT3->data[i] == NULL){
            // If allocation fails, free any already allocated memory:
            for(j = 0; j < i; j++){
                free(MAT3->data[j]);
            }
            free(MAT3->data);
            return false;                                                                   // Memory allocation failed.
        }
    }
    // Allocate memory for each y-row:
    for(i = 0; i < xSize; i++){
        for(j = 0; j < ySize; j++){
            MAT3->data[i][j] = (char *)malloc(zSize * sizeof(char));
            if(MAT3->data[i][j] == NULL){
                // If allocation fails, free any already allocated memory:
                for(k = 0; k <= i; k++){
                    for(l = 0; l < (k == i ? j : ySize); l++){
                        free(MAT3->data[k][l]);
                    }
                    if (k < i) free(MAT3->data[k]);
                }
                free(MAT3->data);
                return false;                                                               // Memory allocation failed.
            }
        }
    }
    return true;                                                                            // Memory allocation successful.
}
//---------------------------------------------------------------------------------------------------------------
// Function to free memory for the 3d matrix in the structure:
void freeMatrix3(Matrix3 *MAT3){
    int i, j;                                                                               // Declaration of i and j as integer variables.
    for(i = 0; i < MAT3->xSize; i++){
        for(j = 0; j < MAT3->xSize; j++){
            free(MAT3->data[i][j]);                                                         // Liberate space for MAT{i,j} data structure.
        }
        free(MAT3->data[i]);                                                                // Liberate space for MAT{i} data structure.
    }
    free(MAT3->data);                                                                       // Liberate space for whole MAT data structure.
    MAT3->xSize = 0;                                                                        // Set x size of MAT to zero.
    MAT3->ySize = 0;                                                                        // Set y size of MAT to zero.
    MAT3->zSize = 0;                                                                        // Set z size of MAT to zero.
    MAT3->data = NULL;                                                                      // Data of MAT to empty.
}
//---------------------------------------------------------------------------------------------------------------
// Creating data structure that will be used to arrange streaming data set:
Data_Struct createDataStruct(int bufferSize, int xSize, int ySize, int zSize){
    // Configuring the members of the desired data structure:
    Data_Struct DAT;                                                                        // Creates the desired data structure as DAT.
    DAT.bufferSize = bufferSize;                                                            // Setting buffer size.
    DAT.bufferIndex = 0;                                                                    // Clear buffer index.
    DAT.charBuffer = (char *)malloc(bufferSize * sizeof(char));                             // Allocate memory for char-type data buffer.
    DAT.flag = (bool *)malloc(2 * sizeof(bool));                                            // Allocate memory for some execution flags.
    DAT.flag[0] = allocateMatrix3(&DAT.MAT3,xSize,ySize,zSize);                             // Succesful 3d matrix allocation in DAT.flag[0].
    DAT.flag[1] = false;                                                                    // Setting DAT.flag[1] to false.
    return DAT;
}
//---------------------------------------------------------------------------------------------------------------
// initializing char-type buffer data:
void init_charBuffer(Data_Struct *DAT){
    int i;                                                                                  // Declaration of i as integer variable.
    DAT->flag[1] = false;                                                                   // Setting data flag to false.
    for(i = 0; i < DAT->bufferSize; i++){                                                   // Bucle that set to 0 all.
        DAT->charBuffer[i] = 0x00;                                                          // Clear characters in buffer.
    }
    DAT->bufferIndex = 0;                                                                   // Clear buffer index.
}
//---------------------------------------------------------------------------------------------------------------
// Adding characters to buffer:
void add_2_charBuffer(Data_Struct *DAT, char c){
    if (DAT->bufferIndex >= DAT->bufferSize) return;
    switch(c){
        case 0x0D:                                                                          // Line Feed 1 -> Enable flag.
        DAT->flag[1] = true;                                                                // Setting flag 1 to true.
        break;
        case 0x0A:                                                                          // Line Feed 2 -> Enable flag.
        DAT->flag[1] = true;                                                                // Setting flag 1 to true.
        break;
        case 0x08:                                                                          // Del -> Delete last character from buffer.
        if(DAT->bufferIndex > 0) DAT->charBuffer[--DAT->bufferIndex] = 0x00;                // Backspace.
        break;
        default:                                                                            // Add received character to buffer.
        DAT->charBuffer[DAT->bufferIndex++] = c;
    }
}
//---------------------------------------------------------------------------------------------------------------
// Classify char-type data from developed buffer within data structure as DAT:
void classify_charBuffer(Data_Struct *DAT){
    int i, j = 0, k = 0;                                                                    // Declaration of i, j, and k as index integer variables.
    char charValue[DAT->MAT3.zSize];                                                        // Declaration of char variable to temporarily store a value from buffer data set.
    if(DAT->flag[0]){
        // separating data consigned in buffer:
        for(i = 0; i < DAT->bufferIndex; i++){
            if(DAT->charBuffer[i] == ','){
                j++;                                                                        // Increasing j variable.
                if(j == 1){
                    charValue[k] = '\0';                                                    // String termination of charValue.
                    DAT->identifier = atoi(charValue);                                      // Getting data identifier.
                }
                k = 0;                                                                      // Reset k index.
            }
            else if(DAT->charBuffer[i] != ':' && DAT->charBuffer[i] != ',' && j == 0){
                charValue[k++] = DAT->charBuffer[i];                                        // Using charValue.
            }
            else if(DAT->charBuffer[i] != ',' && DAT->charBuffer[i] != ';' && j > 0){
                DAT->MAT3.data[DAT->identifier][j-1][k++] = DAT->charBuffer[i];             // Using 3d matrix of DAT struct.
            }
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
// A helper function to reverse a string:
void reverse(char *str, int len){
    int i = 0, j = len - 1, temp;                                                           // Declaration of i, j and temp as integer variables.
    while(i < j){
        temp = str[i];
        str[i] = str[j];
        str[j] = temp;
        i++;
        j--;
    }
}
//---------------------------------------------------------------------------------------------------------------
// Utility function to convert an integer to a string:
int intToStr(int x, char str[], int dig){
    int i = 0;                                                                              // Declaration of i as index integer variable.
    if(x == 0) str[i++] = '0';                                                              // Add character '0' to output string.
    else{
        while(x){
            str[i++] = (x % 10) + '0';
            x = x / 10;
        }
    }
    // If number of digits required is more, then add '0's:
    while(i < dig) str[i++] = '0';
    reverse(str, i);                                                                        // Reverse the string.
    str[i] = '\0';
    return i;
}
//---------------------------------------------------------------------------------------------------------------
// Convert any floating-point number (such as float or double) to a string representation:
void ftoa(float num, char *res, int afterpoint){
    int j;                                                                                  // Declaration of j as integer variable.
    int isNegative = 0;                                                                     // Flag indicator that float number is negative.
    // handling special cases:
    if(isnan(num)){
        strcpy(res,"nan");
    }
    else if (isinf(num)){
        strcpy(res,"inf");
    }
    else{
        // Handling negative numbers:
        if(num < 0){
            isNegative = 1;                                                                 // Indicates when float number is negative.
            num = -num;                                                                     // Float number is changed to positive.
        }
        // Extracting integer part:
        int ipart = (int)num;
        // Extracting floating part:
        float fpart = num - (float)ipart;
        // Converting integer part to string:
        int i = intToStr(ipart, res, 0);
        // Adding negative sign if needed:
        if(isNegative){
            for(j = i; j > 0; j--){
                res[j] = res[j - 1];
            }
            res[0] = '-';
            i++;
        }
        // If there is no need for fractional part, stop here...
        //-----------------------------------------------
        if(afterpoint != 0){
            res[i] = '.';                                                                   // Add decimal point.
            // Multiplying the fractional part by 10^afterpoint:
            fpart = fpart * pow(10, afterpoint);
            // Converting fractional part to string:
            intToStr((int)fpart, res + i + 1, afterpoint);
        }
    }
}
//---------------------------------------------------------------------------------------------------------------
// Function to initialize whichever char-type data string:
void initString(char *str, int strSize){
    int i;                                                                                  // Declaration of i as integer variable.
    for(i = 0; i < strSize; i++){                                                           // Bucle that set to 0 all.
        str[i] = 0x00;                                                                      // Characters in buffer.
    }
}
//---------------------------------------------------------------------------------------------------------------
