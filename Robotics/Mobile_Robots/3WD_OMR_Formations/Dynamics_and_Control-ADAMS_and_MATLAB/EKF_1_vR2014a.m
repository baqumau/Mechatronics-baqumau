function [sys,x0,str,ts,simStateCompliance] = EKF_1_vR2014a(t,x,u,flag,par)
%SFUNTMPL General MATLAB S-Function Template
%   With MATLAB S-functions, you can define you own ordinary differential
%   equations (ODEs), discrete system equations, and/or just about
%   any type of algorithm to be used within a Simulink block diagram.
%
%   The general form of an MATLAB S-function syntax is:
%       [SYS,X0,STR,TS,SIMSTATECOMPLIANCE] = SFUNC(T,X,U,FLAG,P1,...,Pn)
%
%   What is returned by SFUNC at a given point in time, T, depends on the
%   value of the FLAG, the current state vector, X, and the current
%   input vector, U.
%
%   FLAG   RESULT             DESCRIPTION
%   -----  ------             --------------------------------------------
%   0      [SIZES,X0,STR,TS]  Initialization, return system sizes in SYS,
%                             initial state in X0, state ordering strings
%                             in STR, and sample times in TS.
%   1      DX                 Return continuous state derivatives in SYS.
%   2      DS                 Update discrete states SYS = X(n+1)
%   3      Y                  Return outputs in SYS.
%   4      TNEXT              Return next time hit for variable step sample
%                             time in SYS.
%   5                         Reserved for future (root finding).
%   9      []                 Termination, perform any cleanup SYS=[].
%
%
%   The state vectors, X and X0 consists of continuous states followed
%   by discrete states.
%
%   Optional parameters, P1,...,Pn can be provided to the S-function and
%   used during any FLAG operation.
%
%   When SFUNC is called with FLAG = 0, the following information
%   should be returned:
%
%      SYS(1) = Number of continuous states.
%      SYS(2) = Number of discrete states.
%      SYS(3) = Number of outputs.
%      SYS(4) = Number of inputs.
%               Any of the first four elements in SYS can be specified
%               as -1 indicating that they are dynamically sized. The
%               actual length for all other flags will be equal to the
%               length of the input, U.
%      SYS(5) = Reserved for root finding. Must be zero.
%      SYS(6) = Direct feedthrough flag (1=yes, 0=no). The s-function
%               has direct feedthrough if U is used during the FLAG=3
%               call. Setting this to 0 is akin to making a promise that
%               U will not be used during FLAG=3. If you break the promise
%               then unpredictable results will occur.
%      SYS(7) = Number of sample times. This is the number of rows in TS.
%
%
%      X0     = Initial state conditions or [] if no states.
%
%      STR    = State ordering strings which is generally specified as [].
%
%      TS     = An m-by-2 matrix containing the sample time
%               (period, offset) information. Where m = number of sample
%               times. The ordering of the sample times must be:
%
%               TS = [0      0,      : Continuous sample time.
%                     0      1,      : Continuous, but fixed in minor step
%                                      sample time.
%                     PERIOD OFFSET, : Discrete sample time where
%                                      PERIOD > 0 & OFFSET < PERIOD.
%                     -2     0];     : Variable step discrete sample time
%                                      where FLAG=4 is used to get time of
%                                      next hit.
%
%               There can be more than one sample time providing
%               they are ordered such that they are monotonically
%               increasing. Only the needed sample times should be
%               specified in TS. When specifying more than one
%               sample time, you must check for sample hits explicitly by
%               seeing if
%                  abs(round((T-OFFSET)/PERIOD) - (T-OFFSET)/PERIOD)
%               is within a specified tolerance, generally 1e-8. This
%               tolerance is dependent upon your model's sampling times
%               and simulation time.
%
%               You can also specify that the sample time of the S-function
%               is inherited from the driving block. For functions which
%               change during minor steps, this is done by
%               specifying SYS(7) = 1 and TS = [-1 0]. For functions which
%               are held during minor steps, this is done by specifying
%               SYS(7) = 1 and TS = [-1 1].
%
%      SIMSTATECOMPLIANCE = Specifices how to handle this block when saving and
%                           restoring the complete simulation state of the
%                           model. The allowed values are: 'DefaultSimState',
%                           'HasNoSimState' or 'DisallowSimState'. If this value
%                           is not speficified, then the block's compliance with
%                           simState feature is set to 'UknownSimState'.


%   Copyright 1990-2010 The MathWorks, Inc.

%
% The following outlines the general structure of an S-function.
%
switch flag,

  %%%%%%%%%%%%%%%%%%
  % Initialization %
  %%%%%%%%%%%%%%%%%%
  case 0,
    [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes(par);

  %%%%%%%%%%%%%%%
  % Derivatives %
  %%%%%%%%%%%%%%%
  case 1,
    sys=mdlDerivatives(t,x,u,par);

  %%%%%%%%%%
  % Update %
  %%%%%%%%%%
  case 2,
    sys=mdlUpdate(t,x,u,par);

  %%%%%%%%%%%
  % Outputs %
  %%%%%%%%%%%
  case 3,
    sys=mdlOutputs(t,x,u,par);

  %%%%%%%%%%%%%%%%%%%%%%%
  % GetTimeOfNextVarHit %
  %%%%%%%%%%%%%%%%%%%%%%%
  case 4,
    sys=mdlGetTimeOfNextVarHit(t,x,u);

  %%%%%%%%%%%%%
  % Terminate %
  %%%%%%%%%%%%%
  case 9,
    sys=mdlTerminate(t,x,u);

  %%%%%%%%%%%%%%%%%%%%
  % Unexpected flags %
  %%%%%%%%%%%%%%%%%%%%
  otherwise
    DAStudio.error('Simulink:blocks:unhandledFlag', num2str(flag));

end

% end sfuntmpl

%
%=============================================================================
% mdlInitializeSizes
% Return the sizes, initial conditions, and sample times for the S-function.
%=============================================================================
%
function [sys,x0,str,ts,simStateCompliance]=mdlInitializeSizes(par)

%
% call simsizes for a sizes structure, fill it in and convert it to a
% sizes array.
%
% Note that in this example, the values are hard coded.  This is not a
% recommended practice as the characteristics of the block are typically
% defined by the S-function parameters.
%
sizes = simsizes;

sizes.NumContStates  = 0;
sizes.NumDiscStates  = 36;
sizes.NumOutputs     = 6;
sizes.NumInputs      = 10;
sizes.DirFeedthrough = 0;
sizes.NumSampleTimes = 1;   % at least one sample time is needed

sys = simsizes(sizes);

%
% initialize the initial conditions
%

x0 = [zeros(1,6) zeros(1,3) zeros(1,3) zeros(1,3) par.x0_r1(1:3,1)' zeros(1,6) zeros(1,3) zeros(1,3) zeros(1,3) par.x0_r2(1:3,1)']';

%
% str is always an empty matrix
%
str = [];

%
% initialize the array of sample times
%
ts  = [0 0];

% Specify the block simStateCompliance. The allowed values are:
%    'UnknownSimState', < The default setting; warn and assume DefaultSimState
%    'DefaultSimState', < Same sim state as a built-in block
%    'HasNoSimState',   < No sim state
%    'DisallowSimState' < Error out when saving or restoring the model sim state
simStateCompliance = 'UnknownSimState';

% end mdlInitializeSizes

%
%=============================================================================
% mdlDerivatives
% Return the derivatives for the continuous states.
%=============================================================================
%
function sys=mdlDerivatives(t,x,u,par)

sys = [];

% end mdlDerivatives

%
%=============================================================================
% mdlUpdate
% Handle discrete state updates, sample time hits, and major time step
% requirements.
%=============================================================================
%
function sys=mdlUpdate(t,x,u,par)

sys(1:3,1) = u(1:3,1);                                                                                                      % x(1:3) = z^{-1}*W1.
sys(4:6,1) = (par.Ts/2)*(sys(1:3,1) + x(1:3,1)) + x(4:6,1);                                                                 % x(4:6) = int{W1}.
sys(19:21,1) = u(4:6,1);                                                                                                    % x(19:21) = z^{-1}*W2.
sys(22:24,1) = (par.Ts/2)*(sys(19:21,1) + x(19:21,1)) + x(22:24,1);                                                         % x(22:24) = int{W2}.
V1 = par.r_1*[         -1/3,          -1/3,           2/3;...
                  sqrt(3)/3,    -sqrt(3)/3,             0;...
              1/(3*par.l_1), 1/(3*par.l_1), 1/(3*par.l_1)]*(sys(4:6,1) - x(4:6,1));                                         % Input U_1.
V2 = par.r_2*[         -1/3,          -1/3,           2/3;...
                  sqrt(3)/3,    -sqrt(3)/3,             0;...
              1/(3*par.l_2), 1/(3*par.l_2), 1/(3*par.l_2)]*(sys(22:24,1) - x(22:24,1));                                     % Input U_2.
%---------------------------------Prediction-------------------------------
Ob_1 = V1(3,1) + x(18,1);
Ob_2 = V2(3,1) + x(36,1);
Pb_1 = [cos(Ob_1), -sin(Ob_1);...
        sin(Ob_1),  cos(Ob_1)]*V1(1:2,1) + x(16:17,1);
Pb_2 = [cos(Ob_2), -sin(Ob_2);...
        sin(Ob_2),  cos(Ob_2)]*V2(1:2,1) + x(34:35,1);
F1 = [1, 0, -sin(Ob_1)*V1(1,1)-cos(Ob_1)*V1(2,1);...
      0, 1,  cos(Ob_1)*V1(1,1)-sin(Ob_1)*V1(2,1);...
      0, 0,                                    1];
F2 = [1, 0, -sin(Ob_2)*V2(1,1)-cos(Ob_2)*V2(2,1);...
      0, 1,  cos(Ob_2)*V2(1,1)-sin(Ob_2)*V2(2,1);...
      0, 0,                                    1];
G1 = [cos(Ob_1), -sin(Ob_1), -sin(Ob_1)*V1(1,1)-cos(Ob_1)*V1(2,1);...
      sin(Ob_1),  cos(Ob_1),  cos(Ob_1)*V1(1,1)-sin(Ob_1)*V1(2,1);...
              0,          0,                                    1];
G2 = [cos(Ob_2), -sin(Ob_2), -sin(Ob_2)*V2(1,1)-cos(Ob_2)*V2(2,1);...
      sin(Ob_2),  cos(Ob_2),  cos(Ob_2)*V2(1,1)-sin(Ob_2)*V2(2,1);...
              0,          0,                                    1];
H1 = [1, 0, -par.b_1*cos(Ob_1);...
      0, 1, -par.b_1*sin(Ob_1)];
H2 = [1, 0, -par.b_2*cos(Ob_2);...
      0, 1, -par.b_2*sin(Ob_2)];
Q1 = [(par.dnu_1(1,1)*abs(V1(1,1)) + par.dnu_1(2,1)*abs(V1(2,1)))^2,                                                             0,                               0;...
                                                                  0, (par.dnu_1(3,1)*abs(V1(1,1)) + par.dnu_1(4,1)*abs(V1(2,1)))^2,                               0;...
                                                                  0,                                                             0, (par.dnu_1(5,1)*abs(V1(3,1)))^2];
Q2 = [(par.dnu_2(1,1)*abs(V2(1,1)) + par.dnu_2(2,1)*abs(V2(2,1)))^2,                                                             0,                               0;...
                                                                  0, (par.dnu_2(3,1)*abs(V2(1,1)) + par.dnu_2(4,1)*abs(V2(2,1)))^2,                               0;...
                                                                  0,                                                             0, (par.dnu_2(5,1)*abs(V2(3,1)))^2];
R1 = par.dny_1*eye(2);
R2 = par.dny_2*eye(2);
Sigma_b1 = F1*[x(7:9,1) x(10:12,1) x(13:15,1)]*F1' + G1*Q1*G1';
Sigma_b2 = F2*[x(25:27,1) x(28:30,1) x(31:33,1)]*F2' + G2*Q2*G2';
%---------------------------------Correction-------------------------------
S1 = H1*Sigma_b1*H1' + R1;
S2 = H2*Sigma_b2*H2' + R2;
L1 = Sigma_b1*H1'/S1;
L2 = Sigma_b2*H2'/S2;
Sigma1 = (eye(3) - L1*H1)*Sigma_b1;
Sigma2 = (eye(3) - L2*H2)*Sigma_b2;
sys(7:9,1) = Sigma1(:,1);
sys(10:12,1) = Sigma1(:,2);
sys(13:15,1) = Sigma1(:,3);
sys(25:27,1) = Sigma2(:,1);
sys(28:30,1) = Sigma2(:,2);
sys(31:33,1) = Sigma2(:,3);
sys(16:18,1) = [Pb_1;Ob_1] + L1*(u(7:8,1) - Pb_1 + [par.b_1*sin(Ob_1);-par.b_1*cos(Ob_1)]);
sys(34:36,1) = [Pb_2;Ob_2] + L2*(u(9:10,1) - Pb_2 + [par.b_2*sin(Ob_2);-par.b_2*cos(Ob_2)]);

% end mdlUpdate

%
%=============================================================================
% mdlOutputs
% Return the block outputs.
%=============================================================================
%
function sys=mdlOutputs(t,x,u,par)

sys(1:3,1) = x(16:18,1);
sys(4:6,1) = x(34:36,1);

% end mdlOutputs

%
%=============================================================================
% mdlGetTimeOfNextVarHit
% Return the time of the next hit for this block.  Note that the result is
% absolute time.  Note that this function is only used when you specify a
% variable discrete-time sample time [-2 0] in the sample time array in
% mdlInitializeSizes.
%=============================================================================
%
function sys=mdlGetTimeOfNextVarHit(t,x,u)

sampleTime = 1;    %  Example, set the next hit to be one second later.
sys = t + sampleTime;

% end mdlGetTimeOfNextVarHit

%
%=============================================================================
% mdlTerminate
% Perform any end of simulation tasks.
%=============================================================================
%
function sys=mdlTerminate(t,x,u)

sys = [];

% end mdlTerminate