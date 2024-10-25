function Beta_c = absoluteAngle07_vR2014a(u)

persistent data_7

if ~isstruct(data_7)
    f_ini = 1;
else
    f_ini = 0;
end

% Initial values to this function:
if f_ini
    % Increment:
    data_7.j = 0;
    % Flags:
    data_7.f1 = 1;
    data_7.f2 = 1;
    % Discrete state:
    data_7.x = u;
end

% Correction algorithm for input angle [u], from range between {-pi,pi} to an absolute range {-inf,inf}:
% Cuadrant recognition for input angle:
if u >= 0 && u <= pi/2
    data_7.f2 = 1;
elseif u > pi/2 && u <= pi
    data_7.f2 = 2;
elseif u > -pi && u <= -pi/2
    data_7.f2 = 3;
else
    data_7.f2 = 4;
end
% Cuadrant recognition for delayed input angle (state x):
if data_7.x >= 0 && data_7.x <= pi/2
    data_7.f1 = 1;
elseif data_7.x > pi/2 && data_7.x <= pi
    data_7.f1 = 2;
elseif data_7.x > -pi && data_7.x <= -pi/2
    data_7.f1 = 3;
else
    data_7.f1 = 4;
end
% Addition of 2*pi:
if data_7.f1 == 2 && data_7.f2 == 3
    data_7.j = data_7.j + 2;
end
if data_7.f1 == 1 && data_7.f2 == 3
    data_7.j = data_7.j + 2;
end
    
% Substraction of 2*pi:
if data_7.f1 == 3 && data_7.f2 == 2
    data_7.j = data_7.j - 2;
end
% Correction of angle:
Beta_c = data_7.j*pi + u;

% Updating discrete state [x = uz^(-1)]:
data_7.x = u;
end