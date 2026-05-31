% Start Up:
clc, clear
clear functions;
% Nonlinear Model:
Bot_3
% adams_sys
% Control system:
Control_Schematic_13
Ts=1/100;
%% Control System of Angular Velocity:
% Parameters of baqubot:
jw = 52.91;                         %[kg*mm^2], Mass moment of inertia of the right and left wheels.
jc = 5071.56;                       %[kg*mm^2], Mass moment of inertia of robot along the rotation axis c.
r = 50;                             %[mm], Radius of the right and left wheels.
m = 1.245;                          %[kg], Total mass of the robot.
b = 156;                            %[mm], Distance between both wheels.
d = 13.52;                          %[mm], Distance from center of rotaxion axis to center of mass.
J = jc + m*d^2;                     %[kg*mm^2], Apparent moment of inertia.
Kappa = (1E3/r)/((jw/r)+(m*r*.4));  %[--], Coefficient (1E3 is added to convert from N*mm to Kg).
% Encapsulating the parameters:
par.jw = jw; par.jc = jc; par.r = r; par.m = m; par.b = b; par.d = d; par.J = J;
par.x0 = [0 0 0 0 0 0]';            % Initial conditions for extended observer.
par.x0_robot = [2500 200 0 0 0 0]'; % Initial conditions for motion dynamics of robot.
par.kappa = Kappa;
par.M_inv = [1E3/(m*r) 1E3/(m*r);(b*1E3)/(2*r*(J-m*d^2)) -(b*1E3)/(2*r*(J-m*d^2))];
par.Sw = [r/2 r/2;r/b -r/b]; par.Sw_inv = inv([r/2 r/2;r/b -r/b]);
s = tf('s');
Fz = c2d(.1/(s+.1),Ts);
% Observer 1 data:
Am1 = [0 -1 0;0 0 1;0 0 0];
Bm1 = [1E3/m 0 0]';
Cm1 = [1 0 0];
% Characteristic polynomial of Observer 1:
[PolyObs1,PolesObs1] = charatioass(3,1.3,20,3.5);
q1 = diag([15 3 1.5]);
r1 = .05;
% Gains of Observer 1:
Lob1 = place(Am1',Cm1',PolesObs1);
% Lob1 = lqr(Am1',Cm1',q1,r1);
% Arranging the Observer 1:
Aob1 = Am1 - Lob1'*Cm1;
Bob1 = [Bm1 Lob1'];
Cob1 = [1 0 0;0 1 0];
Dob1 = zeros(2,2);
Obd1 = c2d(ss(Aob1,Bob1,Cob1,Dob1),Ts);
par.Aob1 = Obd1.a; par.Bob1 = Obd1.b; par.Cob1 = Obd1.c; par.Dob1 = Obd1.d;
par.eta1 = 50; par.epsilon1 = .1;
% Observer 2 data:
Am2 = [0 -1 0;0 0 1;0 0 0];
Bm2 = [1E3/(J-m*d^2) 0 0]';
Cm2 = [1 0 0];
% Characteristic polynomial of Observer 2:
[PolyObs2,PolesObs2] = charatioass(3,1.1,20,3.3);
q2 = diag([15 3 1.5]);
r2 = .05;
% Gains of Observer 2:
Lob2 = place(Am2',Cm2',PolesObs2);
% Lob2 = lqr(Am2',Cm2',q2,r2);
% Arranging the Observer 2:
Aob2 = Am2 - Lob2'*Cm2;
Bob2 = [Bm2 Lob2'];
Cob2 = [1 0 0;0 1 0];
Dob2 = zeros(2,2);
Obd2 = c2d(ss(Aob2,Bob2,Cob2,Dob2),Ts);
par.Aob2 = Obd2.a; par.Bob2 = Obd2.b; par.Cob2 = Obd2.c; par.Dob2 = Obd2.d;
par.eta2 = 5; par.epsilon2 = .1;
%% Control system:
% Torque control:
k1 = 80; k2 = 80; rho1 = 1/m; rho2 = 1/jc;
load Torques.mat                                                           % Señal de entrada binaria pseudo-aleatoria.
%% Path tracking:
desired_path=My_paths(8,Ts);
x_0 = 1.0858e+03;
y_0 = 1.0858e+03;
%% Control system of path tracking:
K1 = .23;
K2 = .83;
K3 = 12000;
Kn = .0019;
Eps = .1;
%% Tracking differentiator:
rt=820; ht=.02; dt=rt*ht; d0t=dt*ht;
Atd=[1 Ts 0;0 1 0;0 0 0];
Btd=[0 Ts 1]';
Ctd=eye(3);
Dtd=[0 0 0]';
TD=ss(Atd,Btd,Ctd,Dtd,Ts);