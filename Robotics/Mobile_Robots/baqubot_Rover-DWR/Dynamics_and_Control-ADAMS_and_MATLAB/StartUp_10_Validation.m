% Start Up:
clc, clear
clear functions;
% Nonlinear Model:
Bot_3
% adams_sys
% Control system:
Control_Schematic_11
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
par.x0 = [0 0]'; par.kappa = Kappa;
s = tf('s');
Fz = c2d(.1/(s+.1),Ts);
% Observer data:
Am = [0 -Kappa 0 0 0;0 0 1 0 0;0 0 0 1 0;0 0 0 0 1;0 0 0 0 0];
Bm = [Kappa 0 0 0 0]';
Cm = [1 0 0 0 0];
% Characteristic polynomial of Observer:
[PolyObs,PolesObs] = charatioass(5,3,20,3);
% Gains of Observer:
Lob = place(Am',Cm',PolesObs);
% Arranging the Observer:
Aob = Am - Lob'*Cm;
Bob = [Bm Lob'];
Cob = [1 0 0 0 0;0 1 0 0 0];
Dob = zeros(2,2);
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