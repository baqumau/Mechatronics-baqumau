/* This Library includes all the parameters and functions for the respective references of 3WD-OMRs formations.
Several functions will be implemented in this library as the desired trajectories when run ADRC-RS and SMC-CS
control systems in the OMRs formation.*/
//---------------------------------------------------------------------------------------------------------------
#ifndef _3WD_OMRs_References_H_
#define _3WD_OMRs_References_H_
//---------------------------------------------------------------------------------------------------------------
// Defining mathematical values:
#define _USE_MATH_DEFINES
// Including libraries that allows functionality of this script:
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <float.h>
#include <xc.h>                                                                 // Header file that allows code in the source file to access compiler-specific or device-specific features.
                                                                                // Based on your selected device, the compiler sets macros that allow xc.h to vector to the correct device-specific
                                                                                // header file.
#include "3WD_OMRs_Controllers.h"                                               // Controllers library for OMRs.
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement a set of reference trajectory profiles on workspace:
typedef struct{
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float *X_0;                                                                 // Initial conditions for robot states.
    float *Z_0;                                                                 // Initial conditions for cluster states.
    float *x1_k;                                                                // State variables to arrange the delayed desired pose of robots.
    float *x1_kp1;                                                              // State variables to arrange the current desired pose of robots.
    float *x2_k;                                                                // State variables to arrange the delayed desired velocity of robots.
    float *x2_kp1;                                                              // State variables to arrange the current desired velocity of robots.
    float *x3_k;                                                                // State variables to arrange the delayed desired acceleration of robots.
    float *x3_kp1;                                                              // State variables to arrange the current desired acceleration of robots.
    float *z1_k;                                                                // State variables to arrange the delayed desired pose of robots' cluster.
    float *z1_kp1;                                                              // State variables to arrange the current desired pose of robots' cluster.
    float *z2_k;                                                                // State variables to arrange the delayed desired velocity of robots' cluster.
    float *z2_kp1;                                                              // State variables to arrange the current desired velocity of robots' cluster.
    float *z3_k;                                                                // State variables to arrange the delayed desired acceleration of robots' cluster.
    float *z3_kp1;                                                              // State variables to arrange the current desired acceleration of robots' cluster.
    float *y_k;                                                                 // Output variables.
    bool *flag;                                                                 // Execution flag.
    Integrator INT_1;                                                           // Creates first integrator needed for this reference struct.
    Integrator INT_2;                                                           // Creates second integrator needed for this reference struct.
    Correction_Struct COR;                                                      // Creates an angle conversion structure.
    Differentiator DIF_1;                                                       // Creates first differentiator needed for this reference struct.
    Differentiator DIF_2;                                                       // Creates second differentiator needed for this reference struct.
} Reference;
//---------------------------------------------------------------------------------------------------------------
// Defining an enumeration to choose the different control strategy:
enum Reference_Type{
    CIRCUMFERENCE_01,                                                           // Circumference-shape trajectory with OMRs orientation angles synchronized to the whole cluster orientation.
    CIRCUMFERENCE_02,                                                           // Circumference-shape trajectory with OMRs orientation angles fixed to a desired value.
    MINGYUE_01,                                                                 // Infinity-shape trajectory with OMRs orientation angles synchronized to the whole cluster orientation.
    MINGYUE_02,                                                                 // Infinity-shape trajectory with OMRs orientation angles fixed to a desired value.
    STATIC_01                                                                   // Trivial static-formation trajectory 1, where robots are placed in a fixed position while turning on the normal axis to 1/4 rad/s.
};
//---------------------------------------------------------------------------------------------------------------
// Declaration of functions library:
//---------------------------------------------------------------------------------------------------------------
// Configuring the corresponding reference trajectory for OMRs control system:
extern Reference createReference(float sampleTime, enum Reference_Type reftype);
// Initialize the desired reference trajectory for OMRs control system:
extern void initReference(Reference REF, enum Control_System consys, enum Reference_Type reftype, float z_0[]);
// Compute the instantaneous circumference-shape reference trajectory n: 01, for OMRs control system:
extern void computeCircumference01(Reference REF, enum Control_System consys, int iterations);
// Compute the instantaneous mingyue's infinity-shape reference trajectory n: 01, for OMRs control system:
extern void computeInfinity01(Reference REF, enum Control_System consys, int iterations);
// Compute the instantaneous mingyue's infinity-shape reference trajectory n: 02, for OMRs control system:
extern void computeInfinity02(Reference REF, enum Control_System consys, int iterations);
// Compute the statical reference trajectory n: 01, for OMRs control system:
extern void computeStatical01(Reference REF, enum Control_System consys);
//---------------------------------------------------------------------------------------------------------------
#endif /* _3WD_OMRs_REFERENCES_H_ */
//---------------------------------------------------------------------------------------------------------------
