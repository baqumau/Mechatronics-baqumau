%% Second Order Model [Bicycle Dynamics and Control --- By Karl J. Åström]:
clc, clear
% Whole Bicycle [Rigid Body with 90º in head angle]:
Ts = 1/100;               % Sample time.
Rrw = .6482150285/2;      % [m] -- Wheels' radius, rear and frontal wheels.
mt = 12.514197;           % [kg] -- Whole mass of the bicycle.
J = 4.095365;             % [kg.m^2] -- Mass moment of inertia of bicycle (assumed as rigid body) along X axis.
D = 3.492466;             % [kg.m^2] -- Mass product of inertia (assumed as rigid body) with respect to XZ axes.
h = .502656;              % [m] -- Height of the bicycle's center of mass from a moving basis reference frame (contact point of rear wheel with the road).
g = 9.80665;              % [m/s^2] -- Gravity.
b = 1.06016;              % [m] -- Wheel Base.
Ab = D/(J*b); Bb=(mt*h)/(J*b); Cb=(mt*g*h)/J;
Off = deg2rad(-12);       % [rad] Inital leaning (sthocastic). 
% if V(t) = 1.5 m/s, then:
V = 1.5;
% Nominal model:
Tls = tf([Ab*V Bb*(V^2)],[1 0 -Cb]); % Transfer function of the bicycle, that takes the lean angle as output, and steering angle as input.
%% Stabilization controller:
K = (2*b*g)/(V^2);
%% STR controller from nominal model:
a1 = V*Ab; a2 = V*(mt*h/D); a3 = sqrt(mt*g*h/J);
kappa = a1/(2*a3^2); m1 = (a2 - a3)*exp(-a3*Ts) + (a2 + a3)*exp(a3*Ts) - 2*a2;
m2 = (a2 - a3)*exp(a3*Ts) + (a2 + a3)*exp(-a3*Ts) - 2*a2;
m3 = (exp(a3*Ts) + exp(-a3*Ts));
% Discrete nominal model:
z = tf('z',Ts);
Tlz = minreal(kappa*(m1*z^(-1) + m2*z^(-2))/(1 - m3*z^(-1) + z^(-2)));
% % Nominal model responses:
% % figure(1)
% % impulse(Tls,Tlz), grid
% % figure(2)
% % impulse(feedback(Tls*kx,1),feedback(Tlz*kx,1)), grid
%% Adams model:
Plant_1
% adams_sys
ADAMS_ControlSystem_1
Fz = c2d(tf(1,[2 1]),Ts);