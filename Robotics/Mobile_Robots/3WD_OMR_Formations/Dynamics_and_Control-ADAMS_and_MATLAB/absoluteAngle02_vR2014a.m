function Beta_c = absoluteAngle02_vR2014a(u)

persistent data_2

if ~isstruct(data_2)
    f_ini = 1;
else
    f_ini = 0;
end

% Initial values to this function:
if f_ini
    % Increment:
    data_2.j = 0;
    % Flags:
    data_2.f1 = 1;
    data_2.f2 = 1;
    % Discrete state:
    data_2.x = u;
end

% Correction algorithm for input angle [u], from range between {-pi,pi} to an absolute range {-inf,inf}:
% Cuadrant recognition for input angle:
if u >= 0 && u <= pi/2
    data_2.f2 = 1;
elseif u > pi/2 && u <= pi
    data_2.f2 = 2;
elseif u > -pi && u <= -pi/2
    data_2.f2 = 3;
else
    data_2.f2 = 4;
end
% Cuadrant recognition for delayed input angle (state x):
if data_2.x >= 0 && data_2.x <= pi/2
    data_2.f1 = 1;
elseif data_2.x > pi/2 && data_2.x <= pi
    data_2.f1 = 2;
elseif data_2.x > -pi && data_2.x <= -pi/2
    data_2.f1 = 3;
else
    data_2.f1 = 4;
end
% Addition of 2*pi:
if data_2.f1 == 2 && data_2.f2 == 3
    data_2.j = data_2.j + 2;
end
if data_2.f1 == 1 && data_2.f2 == 3
    data_2.j = data_2.j + 2;
end
    
% Substraction of 2*pi:
if data_2.f1 == 3 && data_2.f2 == 2
    data_2.j = data_2.j - 2;
end
% Correction of angle:
Beta_c = data_2.j*pi + u;

% Updating discrete state [x = uz^(-1)]:
data_2.x = u;
end