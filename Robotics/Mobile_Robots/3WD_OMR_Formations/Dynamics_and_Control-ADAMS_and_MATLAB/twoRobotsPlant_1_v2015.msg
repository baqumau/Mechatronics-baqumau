
-------------------------------------------------------------------------------
|        ..          ..                                                       |
|       ####*.      ####.                                                     |
|         `###*.       `#.                 MSC Software                       |
|            `###.       #.                ------------                       |
|               `##.     ##                                                   |
|                 `##.   ##                                                   |
|                   `## ##'                A d a m s   C++   S o l v e r      |
|                     ####                 [Build:         2015.0.0-CL346890] |
|                     ###.                 Version:        2015               |
|                    ###`#.                Patch Version:  None               |
|                  .###  `#                                                   |
|                 ####    `#                                                  |
|                ####      #.                                                 |
|              #####       `#              http://www.mscsoftware.com         |
|            .#####                                                           |
|           #####'                                                            |
|           ####                                                              |
|                                                                             |
|    *********************************************************************    |
|    *                                                                   *    |
|    *                      MSC Software Corporation                     *    |
|    *                                                                   *    |
|    *                             A d a m s                             *    |
|    *                                                                   *    |
|    *          Automatic Dynamic Analysis of Mechanical Systems         *    |
|    *                                                                   *    |
|    *********************************************************************    |
|    *                                                                   *    |
|    *                         LEGAL INFORMATION                         *    |
|    *                                                                   *    |
|    *  Warning:  This computer  program is protected  by copyright law  *    |
|    *  and  international  treaties.    Unauthorized  reproduction  or  *    |
|    *  distribution  of this  computer program, or any  portion of it,  *    |
|    *  may result in severe civil and criminal penalties.               *    |
|    *                                                                   *    |
|    *  Copyright (C) 2015 MSC Software Corporation and  its licensors.  *    |
|    *                        All rights reserved.                       *    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
|-----------------------------------------------------------------------------|
|                                                                             |
|    *********************************************************************    |
|    *                                                                   *    |
|    *   Local Time: 2024-10-29 00:10:46                                 *    |
|    *    Host Name: baqumau-PC                                          *    |
|    *        Uname: MS Windows NT                                       *    |
|    *      OS Info: 6.2                                                 *    |
|    *         User: mauro                                               *    |
|    *  Customer ID: 82B2ED04-FCA5F53B                                   *    |
|    *  Current dir: C:\Users\mauro\Mechatronics-baqumau\Robotics\Mobile_Robots\3WD_OMR_Formations\Dynamics_and_Control-ADAMS_and_MATLAB*    |
|    *                                                                   *    |
|    *********************************************************************    |
|                                                                             |
-------------------------------------------------------------------------------

  OS-environment variable
  MDI_ADAMS_SCONTROLS_APPLICATION=1
  Adams/Controls. Announces Adams/Solver C++ is being run with Adams/Controls in either function evaluation mode or cosimulation mode.



-------------------------------------------------------------------------------
|                                 Model Title                                 |
|=============================================================================|
|                                                                             |
|                  ADAMS/View model name: Robot_Formation_1                   |
|                                                                             |
-------------------------------------------------------------------------------

 command: simulate/initial_conditions


  Begin Displacement Initial Conditions


  End Displacement Initial Conditions


  Begin Velocity Initial Conditions


  End Velocity Initial Conditions


  Begin Acceleration Initial Conditions


  End Acceleration Initial Conditions
 command: var/13, fun=0.00000000000000000e+000
 command: var/14, fun=0.00000000000000000e+000
 command: var/15, fun=0.00000000000000000e+000
 command: var/16, fun=0.00000000000000000e+000
 command: var/17, fun=0.00000000000000000e+000
 command: var/18, fun=0.00000000000000000e+000
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   0.00000E+00  0.00000E+00            5            0       0            0.00 
   0.00000E+00  0.00000E+00            5            0       0            3.81 

---- START: WARNING ----
Integrator HMAX could not be determined. Setting to HINIT.

---- END: WARNING ----
   0.00000E+00  5.00000E-06            0            0       1            3.95 

  End Simulation
 command: var/13, fun=4.20829009806222840e-004
 command: var/14, fun=4.20829009806222840e-004
 command: var/15, fun=-4.20829009806222840e-004
 command: var/16, fun=-4.20829009806222840e-004
 command: var/17, fun=-4.20829009806222840e-004
 command: var/18, fun=4.20829009806222840e-004
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   0.00000E+00  5.00000E-06            0            0       1            3.95 
   1.25000E-02  1.00000E-04          380          134       4            6.13 

  End Simulation
 command: var/13, fun=-1.68330895532475820e-003
 command: var/14, fun=-1.68330895532475820e-003
 command: var/15, fun=1.68330895532475820e-003
 command: var/16, fun=1.68330895532475820e-003
 command: var/17, fun=1.68330895532475820e-003
 command: var/18, fun=-1.68330895532475820e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.25000E-02  1.00000E-04          380          134       4            6.13 
   2.50000E-02  1.00000E-04          741          259       3            8.27 

  End Simulation
 command: var/13, fun=-3.78741858502729120e-003
 command: var/14, fun=3.78741858502729120e-003
 command: var/15, fun=-3.78741858502729120e-003
 command: var/16, fun=3.78741858502729120e-003
 command: var/17, fun=3.78741858502729120e-003
 command: var/18, fun=-3.78741858502729120e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.50000E-02  1.00000E-04          741          259       3            8.27 
   3.75000E-02  1.00000E-04         1093          384       2           10.20 

  End Simulation
 command: var/13, fun=6.73312248010149440e-003
 command: var/14, fun=6.73312248010149440e-003
 command: var/15, fun=-6.73312248010149440e-003
 command: var/16, fun=6.73312248010149440e-003
 command: var/17, fun=6.73312248010149440e-003
 command: var/18, fun=-6.73312248010149440e-003
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.75000E-02  1.00000E-04         1093          384       2           10.20 
   5.00000E-02  1.00000E-04         1390          509       2           11.97 

  End Simulation
 command: var/13, fun=1.05203710550449970e-002
 command: var/14, fun=1.05203710550449970e-002
 command: var/15, fun=-1.05203710550449970e-002
 command: var/16, fun=1.05203710550449970e-002
 command: var/17, fun=1.05203710550449970e-002
 command: var/18, fun=-1.05203710550449970e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   5.00000E-02  1.00000E-04         1390          509       2           11.97 
   6.25000E-02  1.00000E-04         1718          634       2           13.88 

  End Simulation
 command: var/13, fun=1.51491005584813990e-002
 command: var/14, fun=1.51491005584813990e-002
 command: var/15, fun=-1.51491005584813990e-002
 command: var/16, fun=1.51491005584813990e-002
 command: var/17, fun=1.51491005584813990e-002
 command: var/18, fun=-1.51491005584813990e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   6.25000E-02  1.00000E-04         1718          634       2           13.88 
   7.50000E-02  1.00000E-04         2036          759       3           15.72 

  End Simulation
 command: var/13, fun=2.06192330742926980e-002
 command: var/14, fun=2.06192330742926980e-002
 command: var/15, fun=-2.06192330742926980e-002
 command: var/16, fun=2.06192330742926980e-002
 command: var/17, fun=2.06192330742926980e-002
 command: var/18, fun=-2.06192330742926980e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   7.50000E-02  1.00000E-04         2036          759       3           15.72 
   8.75000E-02  1.00000E-04         2373          884       2           17.61 

  End Simulation
 command: var/13, fun=2.69306765228349840e-002
 command: var/14, fun=2.69306765228349840e-002
 command: var/15, fun=-2.69306765228349840e-002
 command: var/16, fun=2.69306765228349840e-002
 command: var/17, fun=2.69306765228349840e-002
 command: var/18, fun=-2.69306765228349840e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   8.75000E-02  1.00000E-04         2373          884       2           17.61 
   1.00000E-01  1.00000E-04         2697         1009       2           19.47 

  End Simulation
 command: var/13, fun=3.40833246625704690e-002
 command: var/14, fun=3.40833246625704690e-002
 command: var/15, fun=-3.40833246625704690e-002
 command: var/16, fun=-3.40833246625704690e-002
 command: var/17, fun=3.40833246625704690e-002
 command: var/18, fun=-3.40833246625704690e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.00000E-01  1.00000E-04         2697         1009       2           19.47 
   1.12500E-01  1.00000E-04         3018         1134       3           21.31 

  End Simulation
 command: var/13, fun=-4.20770570918438390e-002
 command: var/14, fun=4.20770570918438390e-002
 command: var/15, fun=-4.20770570918438390e-002
 command: var/16, fun=-4.20770570918438390e-002
 command: var/17, fun=4.20770570918438390e-002
 command: var/18, fun=-4.20770570918438390e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.12500E-01  1.00000E-04         3018         1134       3           21.31 
   1.25000E-01  1.00000E-04         3345         1259       2           23.16 

  End Simulation
 command: var/13, fun=-5.09117392508529050e-002
 command: var/14, fun=5.09117392508529050e-002
 command: var/15, fun=-5.09117392508529050e-002
 command: var/16, fun=-5.09117392508529050e-002
 command: var/17, fun=5.09117392508529050e-002
 command: var/18, fun=-5.09117392508529050e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.25000E-01  1.00000E-04         3345         1259       2           23.16 
   1.37500E-01  1.00000E-04         3661         1384       2           25.05 

  End Simulation
 command: var/13, fun=-6.05872224239967230e-002
 command: var/14, fun=6.05872224239967230e-002
 command: var/15, fun=-6.05872224239967230e-002
 command: var/16, fun=-6.05872224239967230e-002
 command: var/17, fun=6.05872224239967230e-002
 command: var/18, fun=-6.05872224239967230e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.37500E-01  1.00000E-04         3661         1384       2           25.05 
   1.50000E-01  1.00000E-04         3989         1509       2           26.94 

  End Simulation
 command: var/13, fun=-7.11033437423014280e-002
 command: var/14, fun=7.11033437423014280e-002
 command: var/15, fun=-7.11033437423014280e-002
 command: var/16, fun=-7.11033437423014280e-002
 command: var/17, fun=7.11033437423014280e-002
 command: var/18, fun=-7.11033437423014280e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.50000E-01  1.00000E-04         3989         1509       2           26.94 
   1.62500E-01  1.00000E-04         4322         1634       2           28.86 

  End Simulation
 command: var/13, fun=-8.24599261862013490e-002
 command: var/14, fun=8.24599261862013490e-002
 command: var/15, fun=-8.24599261862013490e-002
 command: var/16, fun=-8.24599261862013490e-002
 command: var/17, fun=8.24599261862013490e-002
 command: var/18, fun=-8.24599261862013490e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.62500E-01  1.00000E-04         4322         1634       2           28.86 
   1.75000E-01  1.00000E-04         4659         1759       2           30.73 

  End Simulation
 command: var/13, fun=-9.46567785885477080e-002
 command: var/14, fun=9.46567785885477080e-002
 command: var/15, fun=-9.46567785885477080e-002
 command: var/16, fun=-9.46567785885477080e-002
 command: var/17, fun=9.46567785885477080e-002
 command: var/18, fun=-9.46567785885477080e-002
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.75000E-01  1.00000E-04         4659         1759       2           30.73 
   1.87500E-01  1.00000E-04         5017         1884       2           32.69 

  End Simulation
 command: var/13, fun=-1.07693695637745000e-001
 command: var/14, fun=1.07693695637745000e-001
 command: var/15, fun=-1.07693695637745000e-001
 command: var/16, fun=-1.07693695637745000e-001
 command: var/17, fun=1.07693695637745000e-001
 command: var/18, fun=-1.07693695637745000e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   1.87500E-01  1.00000E-04         5017         1884       2           32.69 
   2.00000E-01  1.00000E-04         5375         2009       2           34.63 

  End Simulation
 command: var/13, fun=-1.21570457881298170e-001
 command: var/14, fun=1.21570457881298170e-001
 command: var/15, fun=-1.21570457881298170e-001
 command: var/16, fun=-1.21570457881298170e-001
 command: var/17, fun=1.21570457881298170e-001
 command: var/18, fun=-1.21570457881298170e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.00000E-01  1.00000E-04         5375         2009       2           34.63 
   2.12500E-01  1.00000E-04         5715         2134       2           36.52 

  End Simulation
 command: var/13, fun=-1.36286831729420800e-001
 command: var/14, fun=1.36286831729420800e-001
 command: var/15, fun=-1.36286831729420800e-001
 command: var/16, fun=-1.36286831729420800e-001
 command: var/17, fun=1.36286831729420800e-001
 command: var/18, fun=-1.36286831729420800e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.12500E-01  1.00000E-04         5715         2134       2           36.52 
   2.25000E-01  1.00000E-04         6049         2259       2           38.39 

  End Simulation
 command: var/13, fun=-1.51842569459048620e-001
 command: var/14, fun=1.51842569459048620e-001
 command: var/15, fun=-1.51842569459048620e-001
 command: var/16, fun=-1.51842569459048620e-001
 command: var/17, fun=1.51842569459048620e-001
 command: var/18, fun=-1.51842569459048620e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.25000E-01  1.00000E-04         6049         2259       2           38.39 
   2.37500E-01  1.00000E-04         6378         2384       2           40.30 

  End Simulation
 command: var/13, fun=-1.68237409217952830e-001
 command: var/14, fun=1.68237409217952830e-001
 command: var/15, fun=-1.68237409217952830e-001
 command: var/16, fun=-1.68237409217952830e-001
 command: var/17, fun=1.68237409217952830e-001
 command: var/18, fun=-1.68237409217952830e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.37500E-01  1.00000E-04         6378         2384       2           40.30 
   2.50000E-01  1.00000E-04         6665         2509       1           42.03 

  End Simulation
 command: var/13, fun=-1.85471075029158830e-001
 command: var/14, fun=1.85471075029158830e-001
 command: var/15, fun=-1.85471075029158830e-001
 command: var/16, fun=-1.85471075029158830e-001
 command: var/17, fun=1.85471075029158830e-001
 command: var/18, fun=-1.85471075029158830e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.50000E-01  1.00000E-04         6665         2509       1           42.03 
   2.62500E-01  1.00000E-04         6946         2634       1           43.77 

  End Simulation
 command: var/13, fun=-2.03543276795609130e-001
 command: var/14, fun=2.03543276795609130e-001
 command: var/15, fun=-2.03543276795609130e-001
 command: var/16, fun=-2.03543276795609130e-001
 command: var/17, fun=2.03543276795609130e-001
 command: var/18, fun=-2.03543276795609130e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.62500E-01  1.00000E-04         6946         2634       1           43.77 
   2.75000E-01  1.00000E-04         7212         2759       1           45.45 

  End Simulation
 command: var/13, fun=-2.22453710305020590e-001
 command: var/14, fun=2.22453710305020590e-001
 command: var/15, fun=-2.22453710305020590e-001
 command: var/16, fun=-2.22453710305020590e-001
 command: var/17, fun=2.22453710305020590e-001
 command: var/18, fun=-2.22453710305020590e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.75000E-01  1.00000E-04         7212         2759       1           45.45 
   2.87500E-01  1.00000E-04         7477         2884       1           47.14 

  End Simulation
 command: var/13, fun=-2.42202057235063610e-001
 command: var/14, fun=2.42202057235063610e-001
 command: var/15, fun=-2.42202057235063610e-001
 command: var/16, fun=-2.42202057235063610e-001
 command: var/17, fun=2.42202057235063610e-001
 command: var/18, fun=-2.42202057235063610e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   2.87500E-01  1.00000E-04         7477         2884       1           47.14 
   3.00000E-01  1.00000E-04         7751         3009       1           48.84 

  End Simulation
 command: var/13, fun=-2.62787985158619010e-001
 command: var/14, fun=2.62787985158619010e-001
 command: var/15, fun=-2.62787985158619010e-001
 command: var/16, fun=-2.62787985158619010e-001
 command: var/17, fun=2.62787985158619010e-001
 command: var/18, fun=-2.62787985158619010e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.00000E-01  1.00000E-04         7751         3009       1           48.84 
   3.12500E-01  1.00000E-04         8019         3134       1           50.52 

  End Simulation
 command: var/13, fun=-2.84211147549451320e-001
 command: var/14, fun=2.84211147549451320e-001
 command: var/15, fun=-2.84211147549451320e-001
 command: var/16, fun=-2.84211147549451320e-001
 command: var/17, fun=2.84211147549451320e-001
 command: var/18, fun=-2.84211147549451320e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.12500E-01  1.00000E-04         8019         3134       1           50.52 
   3.25000E-01  1.00000E-04         8281         3259       1           52.17 

  End Simulation
 command: var/13, fun=-3.06471183788065150e-001
 command: var/14, fun=3.06471183788065150e-001
 command: var/15, fun=-3.06471183788065150e-001
 command: var/16, fun=-3.06471183788065150e-001
 command: var/17, fun=3.06471183788065150e-001
 command: var/18, fun=-3.06471183788065150e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.25000E-01  1.00000E-04         8281         3259       1           52.17 
   3.37500E-01  1.00000E-04         8541         3384       1           53.89 

  End Simulation
 command: var/13, fun=-3.29567719167672690e-001
 command: var/14, fun=3.29567719167672690e-001
 command: var/15, fun=-3.29567719167672690e-001
 command: var/16, fun=-3.29567719167672690e-001
 command: var/17, fun=3.29567719167672690e-001
 command: var/18, fun=-3.29567719167672690e-001
 command: var/19, fun=0.00000000000000000e+000
 command: var/20, fun=0.00000000000000000e+000
 command: var/22, fun=0.00000000000000000e+000
 command: var/21, fun=0.00000000000000000e+000
 command: var/23, fun=0.00000000000000000e+000


  Begin Simulation

  ****** Performing Dynamic Simulation using Wstiff I3 Integrator ******
   The system is modelled with INDEX-3 DAEs.
   The integrator is WSTIFF, CORRECTOR = modified
   Integration error =    1.000000E-03

   Simulation      Step        Function    Cumulative   Integration     CPU
      Time         Size       Evaluations  Steps Taken    Order        time
   ___________  ___________   ___________  ___________   _________    ________
   3.37500E-01  1.00000E-04         8541         3384       1           53.89 
   3.50000E-01  1.00000E-04         8809         3509       1           55.61 

  End Simulation


Finished -----
Elapsed time = 127.79s,  CPU time = 55.72s,  43.60%
