/* This Library includes all the parameters and functions for control the 3WD-OMRs formation. Several functions
will be implemented in this library to run ADRC-RS and SMC-CS control systems in the OMRs formation.*/
//---------------------------------------------------------------------------------------------------------------
#ifndef _3WD_OMRs_Controllers_H_
#define _3WD_OMRs_Controllers_H_
//---------------------------------------------------------------------------------------------------------------
// Including libraries that allows functionality of this script:
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
//---------------------------------------------------------------------------------------------------------------
/* Define _USE_MATH_DEFINES before including 3WD-OMRs_Controllers.h to expose their macro definitions for common
math constants. */
#define M_PI_6 0.523598775598299                                                // Math definition.
//---------------------------------------------------------------------------------------------------------------
// Definition of kinematic and dynamical parameters of OMRs that will be exported by the library:
#define Robots_Qty 2                                                            // [Un], Qty of robots in the formation;
// Constant parameters of OMR No. 1 (gray robot in our case):
#define delta_1 M_PI_6                                                          // [rad], Wheels 1 and 2 are placed at this angle, with respect to y_m axis.
#define l_1 116.0                                                               // [mm], Distance between the vehicle's center and the center of mass of each wheel.
#define r_1 24.0                                                                // [mm], Radius of each omnidirectional wheel.
#define mt_1 1.253                                                              // [kg], Total mass of the robot.
#define mw_1 .044                                                               // [kg], Mass of each onmidirectional wheel.
#define n_1 80.0                                                                // [m/m], built-in gear ratio by each omni wheel.
#define jr_1 1.0*mt_1*l_1*l_1/2.0                                               // [kg*mm^2], Mass moment of inertia of robot along the rotational center of the robot.
#define jw_1 3.0*mw_1*r_1*r_1/8.0                                               // [kg*mm^2], Mass moment of inertia of each omnidirectional wheel.
#define d_th11_max 15.0344                                                      // [rad/s], Maximum angular velocity of wheel 1.
#define d_th12_max 13.0382                                                      // [rad/s], Maximum angular velocity of wheel 2.
#define d_th13_max 15.2282                                                      // [rad/s], Maximum angular velocity of wheel 3.
#define V1_x_max (r_1/2.0)*(d_th11_max/2.0 + d_th12_max/2.0 + d_th13_max)       // [mm/s], Maximum linear velocity along X axis (considering x in a parallel direction to wheel 3).
#define V1_y_max (r_1/sqrt(3.0))*(d_th11_max + d_th12_max)                      // [mm/s], Maximum linear velocity along Y axis (wheels 1 and 2 are symmetrically oriented by the angle delta with respect to Y axis).
#define d_phi1_max (r_1/(3.0*l_1))*(d_th11_max + d_th12_max + d_th13_max)       // [rad/s], Maximum angular velocity of the robot.
// Constant parameters of OMR No. 2 (black robot in our case):
#define delta_2 M_PI_6                                                          // [rad], Wheels 1 and 2 are placed at this angle, with respect to y_m axis.
#define l_2 110.0                                                               // [mm], Distance between the vehicle's center and the center of mass of each wheel.
#define r_2 28.0                                                                // [mm], Radius of each omnidirectional wheel.
#define mt_2 2.5                                                                // [kg], Total mass of the robot.
#define mw_2 .062                                                               // [kg], Mass of each onmidirectional wheel.
#define n_2 40.0                                                                // [m/m], built-in gear ratio by each omni wheel.
#define jr_2 1.0*mt_2*l_2*l_2/2.0                                               // [kg*mm^2], Mass moment of inertia of robot along the rotational center of the robot.
#define jw_2 3.0*mw_2*r_2*r_2/8.0                                               // [kg*mm^2], Mass moment of inertia of each omnidirectional wheel.
#define d_th21_max 16.0                                                         // [rad/s], Maximum angular velocity of wheel 1.
#define d_th22_max 16.0                                                         // [rad/s], Maximum angular velocity of wheel 2.
#define d_th23_max 16.0                                                         // [rad/s], Maximum angular velocity of wheel 3.
#define V2_x_max (r_2/2.0)*(d_th21_max/2.0 + d_th22_max/2.0 + d_th23_max)       // [mm/s], Maximum linear velocity along X axis (considering X in a parallel direction to wheel 3).
#define V2_y_max (r_2/sqrt(3.0))*(d_th21_max + d_th22_max)                      // [mm/s], Maximum linear velocity along Y axis (wheels 1 and 2 are symmetrically oriented by the angle delta with respect to Y axis).
#define d_phi2_max (r_2/(3.0*l_2))*(d_th21_max + d_th22_max + d_th23_max)       // [rad/s], Maximum angular velocity of the robot.
// Another constant parameters:
#define NOP __asm__(" NOP")                                                     // Nop instruction (asm).
//---------------------------------------------------------------------------------------------------------------
// Data structure to arrange matrices:
typedef struct{
    int rows;                                                                   // Size of rows.
    int cols;                                                                   // Size of columns.
    float **data;                                                               // Matrix data.
} Matrix;
//---------------------------------------------------------------------------------------------------------------
// Data structure for managing the input and output variables set of each OMR:
typedef struct{
    float x; float y; float o;                                                  // [mm;rad], Pose of OMR.
    float w_1; float w_2; float w_3;                                            // [rad/s], Angular velocity reached by each omni wheel.
    float u_1; float u_2; float u_3;                                            // [%(PWM)], Control signal applied to each omni wheel.
} OMR;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement trapezoidal integrators:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float gain;                                                                 // Gain value of integrator.
    float *X_0;                                                                 // Initial conditions.
    float *x1_k;                                                                // State variables to arrange the delayed input u(k).
    float *x1_kp1;                                                              // State variables to arrange input signals as u(k+1).
    float *x2_k;                                                                // State variables x2(k) where integrations results.
    float *x2_kp1;                                                              // State variables x2(k+1) where integration equations are stated.
    float *y_k;                                                                 // Output variables.
    int *flag;                                                                  // Execution flag.
} Integrator;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement differentiators:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float gain;                                                                 // Gain value of differentiator.
    float *X_0;                                                                 // Initial conditions.
    float *x1_k;                                                                // State variables to arrange the delayed input u(k).
    float *x1_kp1;                                                              // State variables to arrange input signals as u(k+1).
    float *x2_k;                                                                // State variables x2(k) where differentiation results.
    float *x2_kp1;                                                              // State variables x2(k+1) where differentiation equations are stated.
    float *y_k;                                                                 // Output variables.
    int *flag;                                                                  // Execution flag.
} Differentiator;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement the m-robot high-gain observer:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float gamma;                                                                // Including a sufficiently small positive constant.
    Matrix alpha_1;                                                             // First gains matrix of RS observer.
    Matrix alpha_2;                                                             // Second gains matrix of RS observer.
    Matrix alpha_3;                                                             // Third gains matrix of RS observer.
    float *F_k;                                                                 // Variable matrix F(k) of dynamical behavior for OMR formation.
    float *G_k;                                                                 // Variable matrix G(k) of dynamical behavior for OMR formation.
    float *X_0;                                                                 // Initial conditions x(0) = [x1(0) x2(0) x3(0)]'.
    float *x1_k;                                                                // State variables to arrange the delayed input u(k).
    float *x1_kp1;                                                              // State variables to arrange input signals as u(k+1).
    float *x2_k;                                                                // State variables x2(k) where integrations results.
    float *x2_kp1;                                                              // State variables x2(k+1) where integration equations are stated.
    float *x3_k;                                                                // State variables x2(k) where integrations results.
    float *x3_kp1;                                                              // State variables x2(k+1) where integration equations are stated.
    float *y_k;                                                                 // Output variables.
    int *flag;                                                                  // Execution flag.
    Integrator INT;                                                             // Creates a Integrator needed for this RS_Observer struct.
} RS_Observer;                                                                  // High-gain observer in the robot space.
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement robot space ADRC control law:
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    float gain;                                                                 // Gain value of integrator.
    float *X_0;                                                                 // Initial conditions.
    float *x1_k;                                                                // State variables to arrange the delayed input u(k).
    float *x1_kp1;                                                              // State variables to arrange input signals as u(k+1).
    float *x2_k;                                                                // State variables x2(k) where integrations results.
    float *x2_kp1;                                                              // State variables x2(k+1) where integration equations are stated.
    float *y_k;                                                                 // Output variables.
    int *flag;                                                                  // Execution flag.
} RS_Controller;
//---------------------------------------------------------------------------------------------------------------
// Data structure to implement GPI controller (discrete proper transfer function):
typedef struct{
    int s_in;                                                                   // Size of input.
    int s_out;                                                                  // Size of output.
    int s_state;                                                                // Size of the state.
    float Ts;                                                                   // Sample time.
    Matrix lambda;                                                              // Gains matrix of GPI controller.
    float *X_0;                                                                 // Initial conditions.
    // float *x1_k;                                                                // State variables to arrange the delayed input u(k).
    // float *x1_kp1;                                                              // State variables to arrange input signals as u(k+1).
    // float *x2_k;                                                                // State variables x2(k) where integrations results.
    // float *x2_kp1;                                                              // State variables x2(k+1) where integration equations are stated.
    // float *y_k;                                                                 // Output variables.
    int *flag;                                                                  // Execution flag.
} GPI_Controller;
//---------------------------------------------------------------------------------------------------------------
// Define an enumeration to represent the different struct types:
enum StructType{
    INTEGRATOR,
    DIFFERENTIATOR,
    RS_OBSERVER,
    RS_CONTROLLER,
    CS_OBSERVER,
    CS_CONTROLLER,
    GPI_CONTROLLER
};
//---------------------------------------------------------------------------------------------------------------
// Declaration of functions library:
//---------------------------------------------------------------------------------------------------------------
// Function to round a floating-point number to three decimal places:
float roundToThreeDecimals(float num);
// Function to allocate memory for the matrix in the struct:
extern bool allocateMatrix(Matrix *MAT, int rows, int cols);
// Function to free memory for the matrix in the struct:
extern void freeMatrix(Matrix *MAT);
// Creating integrator structure:
extern Integrator createIntegrator(int inputSize, float sampleTime, float gain);
// Adding initial conditions to INT Integrator struct:
extern void initIntegrator(Integrator INT, float x_0[]);
// Integration function:
extern void Integration(Integrator INT, float input[]);
// Creating differentiator structure:
extern Differentiator createDifferentiator(int inputSize, float sampleTime, float gain);
// Initialization function for integrator:
extern void initDifferentiator(Differentiator DIF, float x_0[]);
// Integration function:
extern void Differentiation(Differentiator DIF, float input[]);
// Creating the robot space observer struct:
extern RS_Observer createRS_Observer(float sampleTime, float gains[9*Robots_Qty][3*Robots_Qty], float epsilon);
// Adding initial conditions to high-gain observer structured as RSO:
extern void init_RS_Observer(RS_Observer RSO, float x_0[]);
// Robot space estimation function:
extern void RS_Estimation(RS_Observer RSO, float input[], float output[]);
// Creating the GPI controller structured as GPI:
extern GPI_Controller createGPI_Controller(float sampleTime, float gains[3*Robots_Qty][3]);
// Initializing the GPI controller structured as GPI:
extern void initGPI_Controller(GPI_Controller GPI, float x_0[]);
// GPI control computing function:
extern void computeGPIControl(GPI_Controller GPI, float errors[]);
#endif /* _3WD_OMRs_CONTROLLERS_H_ */
//---------------------------------------------------------------------------------------------------------------