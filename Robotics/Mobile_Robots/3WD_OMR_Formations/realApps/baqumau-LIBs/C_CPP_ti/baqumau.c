// Including libraries to execute the programmed functions:
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include <string.h>
// #include <math.h>
#include <float.h>
#include "C28x_FPU_FastRTS.h"                                                               // Include operators from FPUfastRTS library.
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
// Function to free memory for the 3d matrix in the struct:
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
Data_Struct createDataStruct(int rx_bufferSize, int xSize, int ySize, int zSize, int tx_bufferSize){
    // Configuring the members of the desired data structure (receiving data):
    Data_Struct DAT;                                                                        // Creates the desired data structure as DAT.
    DAT.RX_bufferSize = rx_bufferSize;                                                      // Setting buffer size (receiving data).
    DAT.RX_bufferIndex = 0;                                                                 // Clear buffer index (receiving data).
    DAT.RX_charBuffer = (char *)malloc(rx_bufferSize * sizeof(char));                       // Allocate memory for char-type data buffer (receiving data).
    DAT.flag = (bool *)malloc(3 * sizeof(bool));                                            // Allocate memory for some execution flags.
    DAT.flag[0] = allocateMatrix3(&DAT.MAT3,xSize,ySize,zSize);                             // Successful 3d matrix allocation in DAT.flag[0].
    DAT.flag[1] = false;                                                                    // Setting DAT.flag[1] to false.
    // Configuring the members of the desired data structure (sending data):
    DAT.TX_bufferSize = tx_bufferSize;                                                      // Setting buffer size (sending data).
    DAT.TX_bufferIndex = 0;                                                                 // Clear buffer index (sending data).
    DAT.TX_charBuffer = (char *)malloc(tx_bufferSize * sizeof(char));                       // Allocate memory for char-type data buffer (sending data).
    DAT.strLength = 0;                                                                      // Determines length of streaming data set (sending data).
    DAT.flag[2] = false;                                                                    // Setting DAT.flag[2] to false.
    return DAT;
}
//---------------------------------------------------------------------------------------------------------------
// initializing char-type buffer data (receiving data):
void init_RX_charBuffer(Data_Struct *DAT){
    int i;                                                                                  // Declaration of i as integer variable.
    DAT->flag[1] = false;                                                                   // Setting data flag to false.
    for(i = 0; i < DAT->RX_bufferSize; i++){                                                // Loop that set all to 0.
        DAT->RX_charBuffer[i] = 0x00;                                                       // Clear characters in buffer.
    }
    DAT->RX_bufferIndex = 0;                                                                // Clear buffer index.
}
//---------------------------------------------------------------------------------------------------------------
// initializing char-type buffer data (sending data):
void init_TX_charBuffer(Data_Struct *DAT){
    int i;                                                                                  // Declaration of i as integer variable.
    DAT->flag[2] = false;                                                                   // Setting data flag to false.
    for(i = 0; i < DAT->TX_bufferSize; i++){                                                // Loop that set all to 0.
        DAT->TX_charBuffer[i] = 0x00;                                                       // Clear characters in buffer.
    }
    DAT->TX_bufferIndex = 0;                                                                // Clear buffer index.
}
//---------------------------------------------------------------------------------------------------------------
// Adding characters to buffer (receiving data):
void add_2_RX_charBuffer(Data_Struct *DAT, char c){
    if(DAT->RX_bufferIndex >= DAT->RX_bufferSize) return;
    switch(c){
        case 0x0D:                                                                          // Line Feed 1 -> Enable flag.
        DAT->flag[1] = true;                                                                // Setting flag 1 to true.
        break;
        case 0x0A:                                                                          // Line Feed 2 -> Enable flag.
        DAT->flag[1] = true;                                                                // Setting flag 1 to true.
        break;
        case 0x08:                                                                          // Del -> Delete last character from buffer.
        if(DAT->RX_bufferIndex > 0) DAT->RX_charBuffer[--DAT->RX_bufferIndex] = 0x00;       // Backspace.
        break;
        default:                                                                            // Add received character to buffer.
        DAT->RX_charBuffer[DAT->RX_bufferIndex++] = c;
    }
}
//---------------------------------------------------------------------------------------------------------------
// Classify char-type data from developed buffer within data structure as DAT:
void classify_RX_charBuffer(Data_Struct *DAT){
    int i, j = 0, k = 0;                                                                    // Declaration of i, j, and k as index integer variables.
    char *charValue = (char *)malloc(DAT->MAT3.zSize * sizeof(char));                       // Declaration of char variable to temporarily store a value from buffer data set.
    if(DAT->flag[0]){
        // separating data consigned in buffer:
        for(i = 0; i < DAT->RX_bufferIndex; i++){
            if(DAT->RX_charBuffer[i] == ','){
                j++;                                                                        // Increasing j variable.
                if(j == 1){
                    charValue[k] = '\0';                                                    // String termination of charValue.
                    DAT->identifier = atoi(charValue);                                      // Getting data identifier.
                }
                k = 0;                                                                      // Reset k index.
            }
            else if(DAT->RX_charBuffer[i] != ':' && DAT->RX_charBuffer[i] != ',' && j == 0){
                charValue[k++] = DAT->RX_charBuffer[i];                                     // Using charValue.
            }
            else if(DAT->RX_charBuffer[i] != ',' && DAT->RX_charBuffer[i] != ';' && j > 0){
                DAT->MAT3.data[DAT->identifier][j-1][k++] = DAT->RX_charBuffer[i];          // Using 3d matrix of DAT structure.
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
int intToStr(unsigned long x, char str[], int dig){
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
    if(_isnan(num)){
        strcpy(res,"nan");                                                                  // If number is undetermined.
    }
    else if(_isinf(num)){
        strcpy(res,"inf");                                                                  // If number is assumed equals to the infinity.
    }
    else{
        // Handling negative numbers:
        if(num < 0){
            isNegative = 1;                                                                 // Indicates when float number is negative.
            num = -num;                                                                     // Float number is changed to positive.
        }
        // Extracting integer part:
        unsigned long ipart = (unsigned long)num;                                           // Integer part as large as needed.
        // Extracting floating part:
        float fpart = num - (float)ipart;                                                   // Fractional part.
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
            fpart = fpart * powf(10, afterpoint);
            // Converting fractional part to string:
            intToStr((unsigned long)fpart, res + i + 1, afterpoint);
        }
    }
}
//---------------------------------------------------------------------------------------------------------------
// Function to initialize whichever char-type data string:
void initString(char *str, int strSize){
    int i;                                                                                  // Declaration of i as integer variable.
    for(i = 0; i < strSize; i++){                                                           // Loop that set to 0 all.
        str[i] = 0x00;                                                                      // Characters in buffer.
    }
}
//---------------------------------------------------------------------------------------------------------------
// Function to completely remove the characters and shorten the string, shift the remaining characters:
void removeCharacters(char *str, size_t start, size_t count){
    size_t length = strlen(str);
    //-----------------------------------------------
    // Ensure the range is within the string's length:
    if(start < length){
        size_t i;
        for(i = start; i + count < length; i++){
            str[i] = str[i + count];
        }
        str[i] = '\0';                                                                      // Null-terminate the truncated string.
    }
}
//---------------------------------------------------------------------------------------------------------------
// Function to check if a float value is at the limit "inf".
bool _isinf(float x){
    // Extracting the raw bits of the float:
    union{
        float f;
        unsigned long u;
    } float_bits;

    float_bits.f = x;

    // Checking if exponent is all 1s and mantissa is 0:
    unsigned long exp_mask = 0x7F800000;                                                    // Mask for the exponent (8 bits).
    unsigned long mantissa_mask = 0x007FFFFF;                                               // Mask for the mantissa (23 bits).

    unsigned long exponent = float_bits.u & exp_mask;
    unsigned long mantissa = float_bits.u & mantissa_mask;

    if (exponent == exp_mask && mantissa == 0) {
        return true;                                                                        // x is infinity.
    }
    return false;                                                                           // x is not infinity.
}
//---------------------------------------------------------------------------------------------------------------
// Function to check if a floating-point value is considered NaN (Not a Number) when it does not compare equal to itself:
bool _isnan(float value){
    return (value != value);                                                                // NaN is the only value that does not equal itself.
}
//---------------------------------------------------------------------------------------------------------------
// Creating an averaging window structure to mitigate numerical errors in a streaming dataset:
Aver_Window createAverWindow(int input_size, int window_size, float lim_factor[]){
    int i, j;                                                                               // Declaration of i and j as integer variables.
    // Configuring the members of the averaging window structure:
    Aver_Window AVW;                                                                        // Create the averaging window structure.
    AVW.ySize = window_size;                                                                // Define the length of the dataset or data vector.
    AVW.zSize = input_size;                                                                 // Define the length of the window dataset or row numbers of the matrix.
    AVW.limFactor = lim_factor;                                                             // Define the limits factor that conditionate the numerical errors.
    //-----------------------------------------------
    // Preallocating memory:
    AVW.limFactor = (float *)malloc(input_size * sizeof(float));                            // Allocate memory for the output vector y(k).
    AVW.y_k = (float *)malloc(input_size * sizeof(float));                                  // Allocate memory for the output vector y(k).
    AVW.flag = (bool *)malloc(sizeof(bool));                                                // Allocate memory for the flag of AVW structure (disable or enable the averaging window).
    //-----------------------------------------------
    if(allocateMatrix(&AVW.X_k, window_size, input_size)){
        // Creating matrix arrays for alpha_1, alpha_2 and alpha_3:
        for(i = 0; i < window_size; i++){
            for(j = 0; j < input_size; j++){
                AVW.X_k.data[i][j] = 0.0f;                                                  // Clearing values of the matrix X_k within AVW.
            }
        }
    }
    for(i = 0; i < input_size; i++){
        AVW.limFactor[i] = lim_factor[i];                                                   // Clearing values of the matrix X_k within AVW.
    }
    //-----------------------------------------------
    AVW.flag[0] = false;                                                                    // Setting AVW flag to false.
    return AVW;
}
//---------------------------------------------------------------------------------------------------------------
// Initiating the averaging window structure to mitigate numerical errors in a streaming dataset:
void initAverWindow(Aver_Window AVW, float dataset_0[]){
    int i, j;                                                                               // Declaration of i and j as integer variables.
    // Initiating X_k matrix:
    for(i = 0; i < AVW.ySize; i++){
        for(j = 0; j < AVW.zSize; j++){
            AVW.X_k.data[i][j] = dataset_0[j];                                              // Update the initial values in the X_k matrix.
        }
    }
    // Updating output of the averaging window:
    for(i = 0; i < AVW.zSize; i++){
        AVW.y_k[i] = AVW.X_k.data[0][i];                                                    // Update the output of this averaging window.
    }
    // Updating the averaging window flag:
    AVW.flag[0] = true;                                                                     // Flag settled to true, which enables the averaging window on AVW structure.
}
//---------------------------------------------------------------------------------------------------------------
// Computing the averaging window structure to mitigate numerical errors in a streaming dataset:
extern void computeAverWindow(Aver_Window AVW, float dataset[]){
    int i, j;                                                                               // Declaration of i and j as integer variables.
    float avg;                                                                              // Auxliary float variable.
    // Execute averaging window algorithm:
    if(AVW.flag[0]){
        // Updating the averaging matrix X(k):
        for(i = AVW.ySize-1; i > 0; i--){
            for(j = 0; j < AVW.zSize; j++){
                AVW.X_k.data[i][j] = AVW.X_k.data[i-1][j];                                  // Update in a descendent way.
            }
        }
        // Updating input on the averaging matrix X(k):
        for(i = 0; i < AVW.zSize; i++){
            if(dataset[i] > AVW.X_k.data[0][i]+AVW.limFactor[i] || dataset[i] < AVW.X_k.data[0][i]-AVW.limFactor[i]){
                avg = 0.0f;                                                                 // Clear average auxiliary variable.
                for(j = 0; j < AVW.ySize; j++){
                    avg += AVW.X_k.data[j][i]/AVW.ySize;                                    // Computing the mean computation.
                }
                AVW.X_k.data[0][i] = AVW.X_k.data[1][i] + (float)(signf(AVW.X_k.data[0][i] - AVW.X_k.data[1][i]))*fabsf(fabsf(AVW.X_k.data[0][i]) - fabsf(avg));
            }
            else AVW.X_k.data[0][i] = dataset[i];
        }
        //-----------------------------------------------
        // Updating output of the averaging window:
        for(i = 0; i < AVW.zSize; i++){
            AVW.y_k[i] = AVW.X_k.data[0][i];                                                // Update the output of this averaging window.
        }
    }
    else NOP;                                                                               // No operation.
}
//---------------------------------------------------------------------------------------------------------------
