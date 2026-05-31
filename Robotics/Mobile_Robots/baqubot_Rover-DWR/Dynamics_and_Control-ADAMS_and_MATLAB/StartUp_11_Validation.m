% Start Up:
clc, clear
clear functions;
% Nonlinear Model:
Bot_3
% adams_sys
% Control system:
Control_Schematic_12
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
par.x0 = [2500 200 pi/2 0 0 0 0 0 0 0 0 0 0]'; par.kappa = Kappa;
par.M_inv = [1E3/(m*r) 1E3/(m*r);(b*1E3)/(2*r*(J-m*d^2)) -(b*1E3)/(2*r*(J-m*d^2))];
par.Sw = [r/2 r/2;r/b -r/b]; par.Sw_inv = inv([r/2 r/2;r/b -r/b]);
s = tf('s');
Fz = c2d(.1/(s+.1),Ts);
% Observer 1 data:
Am1 = [0 -1 0 0 0;0 0 1 0 0;0 0 0 1 0;0 0 0 0 1;0 0 0 0 0];
Bm1 = [1E3/(m*r) 0 0 0 0;1E3/(m*r) 0 0 0 0]';
Cm1 = [1 0 0 0 0];
% Characteristic polynomial of Observer 1:
[PolyObs1,PolesObs1] = charatioass(5,3,20,3);
% Gains of Observer 1:
Lob1 = place(Am1',Cm1',PolesObs1);
% Arranging the Observer 1:
Aob1 = Am1 - Lob1'*Cm1;
Bob1 = [Bm1 Lob1'];
Cob1 = [1 0 0 0 0;0 1 0 0 0];
Dob1 = zeros(2,3);
% Observer 2 data:
Am2 = [0 -1 0 0 0;0 0 1 0 0;0 0 0 1 0;0 0 0 0 1;0 0 0 0 0];
Bm2 = [(1E3*b)/(2*r*(J-m*d^2)) 0 0 0 0;(-1E3*b)/(2*r*(J-m*d^2)) 0 0 0 0]';
Cm2 = [1 0 0 0 0];
% Characteristic polynomial of Observer 2:
[PolyObs2,PolesObs2] = charatioass(5,2,20,3);
% Gains of Observer 2:
Lob2 = place(Am2',Cm2',PolesObs2);
% Arranging the Observer 2:
Aob2 = Am2 - Lob2'*Cm2;
Bob2 = [Bm2 Lob2'];
Cob2 = [1 0 0 0 0;0 1 0 0 0];
Dob2 = zeros(2,3);
par.Lob1 = Lob1; par.Lob2 = Lob2;
%% Signal applied as input torque in Control_Schematic_9 is used:
load Torques.mat                                                                     % Señal de entrada binaria pseudo-aleatoria.
% Simulation:
% myobj = sim('Control_Schematic_11','SrcWorkspace','Current','StopTime',num2str(T.time(end)));
% Out = myobj.get('Output');
% time = Out.time;
% Xc = Out.signals.values(:,1);
% Yc = Out.signals.values(:,2);
% Thc = Out.signals.values(:,3);
% figure(1)
% plot(Xc,Yc), grid
% figure(2)
% plot(time,Thc), grid