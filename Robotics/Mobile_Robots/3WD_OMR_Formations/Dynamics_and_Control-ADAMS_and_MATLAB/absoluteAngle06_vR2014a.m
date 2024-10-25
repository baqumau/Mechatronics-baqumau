function Beta_c = absoluteAngle06_vR2014a(u)

persistent data_6

if ~isstruct(data_6)
    f_ini = 1;
else
    f_ini = 0;
end

% Initial values to this function:
if f_ini
    % Increment:
    data_6.j = 0;
    % Flags:
    data_6.f1 = 1;
    data_6.f2 = 1;
    % Discrete state:
    data_6.x = u;
end

% Correction algorithm for input angle [u], from range between {-pi,pi} to an absolute range {-inf,inf}:
% Cuadrant recognition for input angle:
if u >= 0 && u <= pi/2
    data_6.f2 = 1;
elseif u > pi/2 && u <= pi
    data_6.f2 = 2;
elseif u > -pi && u <= -pi/2
    data_6.f2 = 3;
else
    data_6.f2 = 4;
end
% Cuadrant recognition for delayed input angle (state x):
if data_6.x >= 0 && data_6.x <= pi/2
    data_6.f1 = 1;
elseif data_6.x > pi/2 && data_6.x <= pi
    data_6.f1 = 2;
elseif data_6.x > -pi && data_6.x <= -pi/2
    data_6.f1 = 3;
else
    data_6.f1 = 4;
end
% Addition of 2*pi:
if data_6.f1 == 2 && data_6.f2 == 3
    data_6.j = data_6.j + 2;
end
if data_6.f1 == 1 && data_6.f2 == 3
    data_6.j = data_6.j + 2;
end
    
% Substraction of 2*pi:
if data_6.f1 == 3 && data_6.f2 == 2
    data_6.j = data_6.j - 2;
end
% Correction of angle:
Beta_c = data_6.j*pi + u;

% Updating discrete state [x = uz^(-1)]:
data_6.x = u;
end