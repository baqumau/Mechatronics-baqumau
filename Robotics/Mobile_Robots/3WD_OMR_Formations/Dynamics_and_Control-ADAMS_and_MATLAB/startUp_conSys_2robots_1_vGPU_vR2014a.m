% Start Up:
clc, clear all
clear functions;
% Loading nonlinear Adams model:
twoRobotsPlant_1_v2015
% adams_sys
% Opening GPU device:
gpuDevice()
% Loading control system 1 (ADRC-RS):
conSys_2robots_1_vGPU_vR2014a
Ts = 1/80;                                                                  %Sample time.
%% Mechanical and Physical Properties:
% Parameters of Omnibot 1:
par.delta_1 = single(pi/6);                                                 %[rad], Wheels 1 and 2 are placed at this angle, with respect to y_m axis.
par.l_1 = single(146);                                                      %[mm], Distance between the vehicle's center and the center of mass of each wheel.
par.jw_1 = single(265.7);                                                   %[kg*mm^2], Mass moment of inertia of each omnidirectional wheel.
par.jr_1 = single(26640.6);                                                 %[kg*mm^2], Mass moment of inertia of robot along the rotational center of the robot.
par.r_1 = single(50);                                                       %[mm], Radius of each omnidirectional wheel.
par.m_1 = single(2.5);                                                      %[kg], Total mass of the robot.
par.phi_01 = pi;                                                            %[rad], Initial orientation angle.
par.x_01 = 10.75e3;                                                         %[mm], Initial distance along x axis.
par.y_01 = 10e3;                                                            %[mm], Initial distance along y axis.
par.x0_r1 = [par.x_01 par.y_01 par.phi_01 0 0 0]';
par.q0_r1 = par.x0_r1(1:3,1);
%--------------------------------------------------------------------------
% Parameters of Omnibot 2:
par.delta_2 = single(pi/6);                                                 %[rad], Wheels 1 and 2 are placed at this angle, with respect to y_m axis.
par.l_2 = single(146);                                                      %[mm], Distance between the vehicle's center and the center of mass of each wheel.
par.jw_2 = single(265.7);                                                   %[kg*mm^2], Mass moment of inertia of each omnidirectional wheel.
par.jr_2 = single(26640.6);                                                 %[kg*mm^2], Mass moment of inertia of robot along the rotational center of the robot.
par.r_2 = single(50);                                                       %[mm], Radius of each omnidirectional wheel.
par.m_2 = single(2.5);                                                      %[kg], Total mass of the robot.
par.phi_02 = pi;                                                            %[rad], Initial orientation angle.
par.x_02 = 9.25e3;                                                          %[mm], Initial distance along x axis.
par.y_02 = 10e3;                                                            %[mm], Initial distance along y axis.
par.x0_r2 = [par.x_02 par.y_02 par.phi_02 0 0 0]';
par.q0_r2 = par.x0_r2(1:3,1);
%--------------------------------------------------------------------------
% Initial conditions for 2-robot cluster system:
par.xc_0 = (par.x0_r1(1) + par.x0_r2(1))/2;
par.yc_0 = (par.x0_r1(2) + par.x0_r2(2))/2;
par.phc_0 = atan2(par.x0_r1(1) - par.x0_r2(1),par.x0_r1(2) - par.x0_r2(2));
par.d_0 = (1/2)*sqrt((par.x0_r1(1) - par.x0_r2(1))^2 + (par.x0_r1(2) - par.x0_r2(2))^2);
par.th1_0 = par.x0_r1(3) - par.phc_0;
par.th2_0 = par.x0_r2(3) - par.phc_0;
%--------------------------------------------------------------------------
par.x0_c  = single([par.xc_0 par.yc_0 par.phc_0 par.d_0 par.th1_0 par.th2_0 0 0 0 0 0 0]');
%% PRBS for torque input:
Tf = 100;                                                                   % Stop time [sec].
% Reference:
mag = 5;                                                                    % Reference magnitude.
Ts_r = 1;                                                                   % Period of the PRBS switching state.
T1.time = 0:Ts_r:Tf;
T1.signals.values = sign(randn(length(T1.time),1))*mag;                     % Input PRBS signal (1).
T2.time = T1.time;
T2.signals.values = sign(randn(length(T1.time),1))*mag;                     % Input PRBS signal (2).
T3.time = T1.time;
T3.signals.values = sign(randn(length(T1.time),1))*mag;                     % Input PRBS signal (3).
%% Control system gains:
% Control law gains for cluster's position:
[K,P] = charatioass(3,1.3,20,4.5);                                          % Desired characteristic polynomial in the tracking error dynamics.
lambda_2 = single(K(1,2)); lambda_1 = single(K(1,3)); lambda_0 = single(K(1,4));
par.lambda_0 = [lambda_0 lambda_0];
par.lambda_1 = [lambda_1 lambda_1];
par.lambda_2 = [lambda_2 lambda_2];
par.Gz_1 = c2d(tf([lambda_1 lambda_0],[1 lambda_2]),Ts,'tustin');
% Control law gains for cluster's orientations:
[K,P] = charatioass(3,1.1,20,4.5);                                          % Desired characteristic polynomial in the tracking error dynamics.
lambda_2 = single(K(1,2)); lambda_1 = single(K(1,3)); lambda_0 = single(K(1,4));
par.lambda_0 = [par.lambda_0 lambda_0];
par.lambda_1 = [par.lambda_1 lambda_1];
par.lambda_2 = [par.lambda_2 lambda_2];
par.Gz_2 = c2d(tf([lambda_1 lambda_0],[1 lambda_2]),Ts,'tustin');
% Control law gains for cluster's distance:
[K,P] = charatioass(3,1.8,20,4.5);                                          % Desired characteristic polynomial in the tracking error dynamics.
lambda_2 = single(K(1,2)); lambda_1 = single(K(1,3)); lambda_0 = single(K(1,4));
par.lambda_0 = [par.lambda_0 lambda_0 par.lambda_0(1,3) par.lambda_0(1,3)];
par.lambda_1 = [par.lambda_1 lambda_1 par.lambda_1(1,3) par.lambda_1(1,3)];
par.lambda_2 = [par.lambda_2 lambda_2 par.lambda_2(1,3) par.lambda_2(1,3)];
par.Gz_3 = c2d(tf([lambda_1 lambda_0],[1 lambda_2]),Ts,'tustin');
%--------------------------------------------------------------------------
par.Gz = [par.Gz_1 0 0 0 0 0;0 par.Gz_1 0 0 0 0;0 0 par.Gz_2 0 0 0;0 0 0 par.Gz_1 0 0;0 0 0 0 par.Gz_1 0;0 0 0 0 0 par.Gz_2];
% sample time:
par.Ts = Ts;                                                                % Saving sample time for s-functions.
par.Ts_2 = Ts/2;                                                            % Half sample time.
Fz = c2d(tf(1,[.273 1]),Ts,'tustin');                                       % Discrte filter.
%% Path tracking:
% desired_path = My_paths(33,Ts);
% % Initial conditions for references builder:
% xc_0 = 8.5858e+03; yc_0 = 8.5858e+03; thc_0 = pi/4; d_0 = 200;
% x1_0 = 8.7272e+03; y1_0 = 8.7272e+03; th1_0 = pi/4;
% x2_0 = 8.4444e+03; y2_0 = 8.4444e+03; th2_0 = pi/4;
% % % With Cluster space references 1:
% % dxc_0 = -56.5685/2; dyc_0 = 56.5685/2; dthc_0 = 0.02; dd_0 = 0; dph1_0 = -.02 - dthc_0; dph2_0 = -.02 - dthc_0;
% % o1r_0 = th1_0 + dthc_0*Ts; o2r_0 = th2_0 + dthc_0*Ts; do1r_0 = -dthc_0; do2r_0 = -dthc_0;
% % With Cluster space references 2:
% th1_0 = 0; th2_0 = 0;
% dxc_0 = -56.5685/2; dyc_0 = 56.5685/2; dthc_0 = 0.02; dd_0 = 0; dph1_0 = -dthc_0; dph2_0 = -dthc_0;
% o1r_0 = th1_0; o2r_0 = th2_0; do1r_0 = 0; do2r_0 = 0;
% %-----------------------------------
% dx1r_0 = dxc_0 + sin(thc_0)*dd_0 + d_0*cos(thc_0)*dthc_0;
% dy1r_0 = dyc_0 + cos(thc_0)*dd_0 - d_0*sin(thc_0)*dthc_0;
% dx2r_0 = dxc_0 - sin(thc_0)*dd_0 - d_0*cos(thc_0)*dthc_0;
% dy2r_0 = dyc_0 - cos(thc_0)*dd_0 + d_0*sin(thc_0)*dthc_0;
% par.x0_c_ref  = [xc_0 yc_0 thc_0 d_0 (th1_0-thc_0) (th2_0-thc_0) dxc_0 dyc_0 dthc_0 dd_0 dph1_0 dph2_0]';
%--------------------------------------------------------------------------
% desired_path = My_paths(34,Ts);
% % Initial conditions for references builder:
% xc_0 = 10e+03; yc_0 = 10e+03; thc_0 = atan2(1/25,1/12.5)+pi/2; d_0 = 200;
% x1_0 = 1.0179e+04; y1_0 = 9.9106e+03; th1_0 = -atan2(1/25,1/12.5);
% x2_0 = 9.8211e+03; y2_0 = 1.0089e+04; th2_0 = -atan2(1/25,1/12.5);
% % With Cluster space references 1:
% dxc_0 = 4000/50; dyc_0 = 4000/25; dthc_0 = 0; dd_0 = 0; dph1_0 = dthc_0; dph2_0 = dthc_0;
% o1r_0 = pi/2 - thc_0; o2r_0 = pi/2 - thc_0; do1r_0 = -dthc_0; do2r_0 = -dthc_0;
% % With Cluster space references 2:
% th1_0 = pi/3; th2_0 = pi/3;
% dxc_0 = 4000/50; dyc_0 = 4000/25; dthc_0 = 0; dd_0 = 0; dph1_0 = dthc_0; dph2_0 = dthc_0;
% o1r_0 = th1_0 + dthc_0*Ts; o2r_0 = th2_0 + dthc_0*Ts; do1r_0 = -dthc_0; do2r_0 = -dthc_0;
% %-----------------------------------
% dx1r_0 = dxc_0 + sin(thc_0)*dd_0 + d_0*cos(thc_0)*dthc_0;
% dy1r_0 = dyc_0 + cos(thc_0)*dd_0 - d_0*sin(thc_0)*dthc_0;
% dx2r_0 = dxc_0 - sin(thc_0)*dd_0 - d_0*cos(thc_0)*dthc_0;
% dy2r_0 = dyc_0 - cos(thc_0)*dd_0 + d_0*sin(thc_0)*dthc_0;
% par.x0_c_ref  = [xc_0 yc_0 thc_0 d_0 (th1_0-thc_0) (th2_0-thc_0) dxc_0 dyc_0 dthc_0 dd_0 dph1_0 dph2_0]';
%--------------------------------------------------------------------------
% desired_path = My_paths(35,Ts);
% % Initial conditions for references builder:
% xc_0 = 7.1716e+03; yc_0 = 7.1716e+03; thc_0 = pi/4; d_0 = 200;
% x1_0 = 7.3130e+03; y1_0 = 7.3130e+03; th1_0 = pi/4;
% x2_0 = 7.0302e+03; y2_0 = 7.0302e+03; th2_0 = pi/4;
% % With Cluster space references 1:
% % dxc_0 = -35.3553; dyc_0 = 35.3553; dthc_0 = 0.0125; dd_0 = 0; dph1_0 = -.0125 - dthc_0; dph2_0 = -.0125 - dthc_0;
% % o1r_0 = thc_0 + 50*Ts/4000; o2r_0 = thc_0 + 50*Ts/4000; do1r_0 = -dthc_0; do2r_0 = -dthc_0;
% % With Cluster space references 2:
% dxc_0 = -35.3553; dyc_0 = 35.3553; dthc_0 = 0.0125; dd_0 = 0; dph1_0 = -.2 - dthc_0; dph2_0 = -.3 - dthc_0;
% o1r_0 = th1_0 + dthc_0*Ts; o2r_0 = th2_0 + dthc_0*Ts; do1r_0 = -.2; do2r_0 = -.3;
% %-----------------------------------
% dx1r_0 = dxc_0 + sin(thc_0)*dd_0 + d_0*cos(thc_0)*dthc_0;
% dy1r_0 = dyc_0 + cos(thc_0)*dd_0 - d_0*sin(thc_0)*dthc_0;
% dx2r_0 = dxc_0 - sin(thc_0)*dd_0 - d_0*cos(thc_0)*dthc_0;
% dy2r_0 = dyc_0 - cos(thc_0)*dd_0 + d_0*sin(thc_0)*dthc_0;
% par.x0_c_ref  = [xc_0 yc_0 thc_0 d_0 (th1_0-thc_0) (th2_0-thc_0) dxc_0 dyc_0 dthc_0 dd_0 dph1_0 dph2_0]';
%--------------------------------------------------------------------------
% desired_path = My_paths(36,Ts);
% % Initial conditions for references builder:
% xc_0 = 3e+03; yc_0 = 3e+03; thc_0 = atan2(1/25,1/12.5) + pi/2; d_0 = 200;
% x1_0 = 3.1789e+03; y1_0 = 2.9106e+03; th1_0 = -atan2(1/25,1/12.5);
% x2_0 = 2.8211e+03; y2_0 = 3.0894e+03; th2_0 = -atan2(1/25,1/12.5);
% % With Cluster space references 1:
% dxc_0 = 2000/25; dyc_0 = 2000/12.5; dthc_0 = 0; dd_0 = 0; dph1_0 = dthc_0; dph2_0 = dthc_0;
% o1r_0 = pi/2 - thc_0; o2r_0 = pi/2 - thc_0; do1r_0 = dthc_0 + dph1_0; do2r_0 = dthc_0 + dph2_0;
% %-----------------------------------
% dx1r_0 = dxc_0 + sin(thc_0)*dd_0 + d_0*cos(thc_0)*dthc_0;
% dy1r_0 = dyc_0 + cos(thc_0)*dd_0 - d_0*sin(thc_0)*dthc_0;
% dx2r_0 = dxc_0 - sin(thc_0)*dd_0 - d_0*cos(thc_0)*dthc_0;
% dy2r_0 = dyc_0 - cos(thc_0)*dd_0 + d_0*sin(thc_0)*dthc_0;
% par.x0_c_ref  = [xc_0 yc_0 thc_0 d_0 (th1_0-thc_0) (th2_0-thc_0) dxc_0 dyc_0 dthc_0 dd_0 dph1_0 dph2_0]';
%--------------------------------------------------------------------------
% desired_path = My_paths(37,Ts);
% % Initial conditions for references builder:
% xc_0 = 13e+03; yc_0 = 13e+03; thc_0 = atan2(1/25,1/12.5) + pi/2; d_0 = 200;
% x1_0 = 13.1789e+03; y1_0 = 12.9106e+03; th1_0 = -atan2(1/25,1/12.5);
% x2_0 = 12.8211e+03; y2_0 = 13.0894e+03; th2_0 = -atan2(1/25,1/12.5);
% % With Cluster space references 1:
% dxc_0 = 2000/25; dyc_0 = 2000/12.5; dthc_0 = 0; dd_0 = 0; dph1_0 = 0; dph2_0 = 0;
% o1r_0 = pi/2 - thc_0; o2r_0 = pi/2 - thc_0; do1r_0 = dthc_0 + dph1_0; do2r_0 = dthc_0 + dph2_0;
% %-----------------------------------
% dx1r_0 = dxc_0 + sin(thc_0)*dd_0 + d_0*cos(thc_0)*dthc_0;
% dy1r_0 = dyc_0 + cos(thc_0)*dd_0 - d_0*sin(thc_0)*dthc_0;
% dx2r_0 = dxc_0 - sin(thc_0)*dd_0 - d_0*cos(thc_0)*dthc_0;
% dy2r_0 = dyc_0 - cos(thc_0)*dd_0 + d_0*sin(thc_0)*dthc_0;
% par.x0_c_ref  = [xc_0 yc_0 thc_0 d_0 (th1_0-thc_0) (th2_0-thc_0) dxc_0 dyc_0 dthc_0 dd_0 dph1_0 dph2_0]';
%--------------------------------------------------------------------------
desired_path = My_paths(38,Ts);
% Initial conditions for references builder:
xc_0 = 10000; yc_0 = 10000; thc_0 = pi/2; d_0 = 2000;
x1_0 = 12000; y1_0 = 10000; th1_0 = 0;
x2_0 = 8000; y2_0 = 10000; th2_0 = 0;
% With Cluster space references 2:
dxc_0 = 0; dyc_0 = 0; dthc_0 = 0; dd_0 = 0; dph1_0 = .2; dph2_0 = -.2;
o1r_0 = pi/2 - thc_0; o2r_0 = pi/2 - thc_0; do1r_0 = dthc_0 + dph1_0; do2r_0 = dthc_0 + dph2_0;
%-----------------------------------
dx1r_0 = dxc_0 + sin(thc_0)*dd_0 + d_0*cos(thc_0)*dthc_0;
dy1r_0 = dyc_0 + cos(thc_0)*dd_0 - d_0*sin(thc_0)*dthc_0;
dx2r_0 = dxc_0 - sin(thc_0)*dd_0 - d_0*cos(thc_0)*dthc_0;
dy2r_0 = dyc_0 - cos(thc_0)*dd_0 + d_0*sin(thc_0)*dthc_0;
%--------------------------------------------------------------------------
par.x0_c_ref = single([xc_0 yc_0 thc_0 d_0 (th1_0-thc_0) (th2_0-thc_0) dxc_0 dyc_0 dthc_0 dd_0 dph1_0 dph2_0]');
par.q0r_r1 = single([x1_0 y1_0 th1_0]');
par.q0r_r2 = single([x2_0 y2_0 th2_0]');
%% Tracking differentiator:
rt = 820; ht = .02; dt = rt*ht; d0t = dt*ht;
Atd = [1 Ts 0;0 1 0;0 0 0];
Btd = [0 Ts 1]';
Ctd = eye(3);
Dtd = [0 0 0]';
TD = ss(Atd,Btd,Ctd,Dtd,Ts);
%% Characteristic polynomials for High-Gain Observers:
[K1,P1] = charatioass(3,1.1,20,4.5);                                        % Gains and Poles for x_c, x_1, x_2 y_c, y_1, y_2 and d;
[K2,P2] = charatioass(3,2.0,20,4.5);                                        % Gains and Poles for th_c, th_1 and th_2;
par.alpha_1 = single(diag([K1(1,2) K1(1,2) K2(1,2) K1(1,2) K1(1,2) K2(1,2)]));
par.alpha_2 = single(diag([K1(1,3) K1(1,3) K2(1,3) K1(1,3) K1(1,3) K2(1,3)]));
par.alpha_3 = single(diag([K1(1,4) K1(1,4) K2(1,4) K1(1,4) K1(1,4) K2(1,4)]));
par.err = single(.42);
%% Extended Kalman Filters
% EKF_1:
par.b_1 = single(87.5);                                                     % [mm] Offset for EKF.
par.dnu_1 = single([.2 .4 .2 .4 .3]');                                      % Input noise bounds.
par.dny_1 = single(22);                                                     % Output noise bound.
% EKF_2:
par.b_2 = single(87.5);                                                     % [mm] Offset for EKF.
par.dnu_2 = single([.2 .4 .2 .4 .3]');                                      % Input noise bounds.
par.dny_2 = single(22);
%% Clutch:
ck = double(max(abs([par.q0_r1;par.q0_r2] - [par.q0r_r1;par.q0r_r2]))*20/7000 + 6); % Time for cluch.
%% Timer:
% tic
% myobj = sim('startUp_conSys_2robots_1_vR2014a','SrcWorkspace','Current');
% toc
%% Several repetitive operations in the whole control system:
par.oneThird = single(1/3);                                                 % Precompute 1/3;
par.twoThird = single(2*par.oneThird);                                      % Precompute 2/3;
par.sqrt3_3 = single(sqrt(3))*par.oneThird;                                 % Precompute sqrt(3)/3;
par.EKFcons01 = par.r_1*par.oneThird;                                       % Precompute constant 1 of EKF 1 (par.r_1/3).
par.EKFcons02 = par.r_1*par.twoThird;                                       % Precompute constant 2 of EKF 1 (2*(par.r_1/3)).
par.EKFcons03 = par.r_1*par.sqrt3_3;                                        % Precompute constant 3 of EKF 1 (par.r_1*sqrt(3)/3).
par.EKFcons04 = par.EKFcons01/par.l_1;                                      % Precompute constant 4 of EKF 1 (par.r_1/(3*par.l_1)).
%-----------------------------------
par.EKFcons05 = par.r_2*par.oneThird;                                       % Precompute constant 5 of EKF 1 (par.r_2/3).
par.EKFcons06 = par.r_2*par.twoThird;                                       % Precompute constant 6 of EKF 1 (2*(par.r_2/3)).
par.EKFcons07 = par.r_2*par.sqrt3_3;                                        % Precompute constant 7 of EKF 1 (par.r_2*sqrt(3)/3).
par.EKFcons08 = par.EKFcons05/par.l_2;                                      % Precompute constant 8 of EKF 1 (par.r_2/(3*par.l_2)).
%-----------------------------------
par.HGOcons01 = par.m_1 + (1.5*par.jw_1/(par.r_1^2));                       % Precompute constant 1 of HGO 1 (par.m_1 + (1.5*par.jw_1/(par.r_1^2))).
par.HGOcons02 = par.jr_1 + (3*par.jw_1*(par.l_1^2))/(par.r_1^2);            % Precompute constant 2 of HGO 1 (par.jr_1 + (3*par.jw_1*(par.l_1^2))/(par.r_1^2)).
par.HGOcons03 = par.HGOcons01 - par.m_1;                                    % Precompute constant 3 of HGO 1 (1.5*par.jw_1/(par.r_1^2)).
par.HGOcons04 = 1/par.r_1;                                                  % Precompute constant 4 of HGO 1 (1/par.r_1).
par.HGOcons05 = par.l_1*par.HGOcons04;                                      % Precompute constant 5 of HGO 1 (par.l_1/par.r_1).
%-----------------------------------
par.HGOcons06 = par.m_2 + (1.5*par.jw_2/(par.r_2^2));                       % Precompute constant 6 of HGO 1 (par.m_2 + (1.5*par.jw_2/(par.r_2^2))).
par.HGOcons07 = par.jr_2 + (3*par.jw_2*(par.l_2^2))/(par.r_2^2);            % Precompute constant 7 of HGO 1 (par.jr_2 + (3*par.jw_2*(par.l_2^2))/(par.r_2^2)).
par.HGOcons08 = par.HGOcons06 - par.m_2;                                    % Precompute constant 8 of HGO 1 (1.5*par.jw_2/(par.r_2^2)).
par.HGOcons09 = 1/par.r_2;                                                  % Precompute constant 9 of HGO 1 (1/par.r_2).
par.HGOcons10 = par.l_2*par.HGOcons09;                                      % Precompute constant 10 of HGO 1 (par.l_2/par.r_2).
%-----------------------------------
par.HGOcons11 = single(par.alpha_1/par.err);                                % Precompute constant 11 of HGO 1 (par.alpha_1/par.err).
par.HGOcons12 = single(par.alpha_2/par.err^2);                              % Precompute constant 12 of HGO 1 (par.alpha_2/par.err^2).
par.HGOcons13 = single(par.alpha_3/par.err^3);                              % Precompute constant 13 of HGO 1 (par.alpha_3/par.err^3).