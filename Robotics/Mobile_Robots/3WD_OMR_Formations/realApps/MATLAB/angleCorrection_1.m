function angle_c = angleCorrection_1(angle,aux_angle)
% Function created to transform the format of the angle received via
% euler(q,'XYZ','frame').

persistent data_1

% Initializing this function:
if ~isstruct(data_1)
    f_ini = 1;
else
    f_ini = 0;
end

% Initial values of this function:
if f_ini
    % Flags:
    data_1.f1 = 1;
    data_1.f2 = 1;
end
%--------------------------------------------------------------------------
% Correction algorithm for the input angle [u] to the specific range between
% -pi to pi:
% Recogning cuadrant of the input angle:
if (angle >= 0) && (angle < pi/2) && (aux_angle < 2*pi/3) 
    data_1.f2 = 1;
elseif (angle > 0) && (angle <= pi/2) && (aux_angle >= 2*pi/3) 
    data_1.f2 = 2;
elseif (angle < 0) && (angle >= -pi/2) && (aux_angle >= 2*pi/3)
    data_1.f2 = 3;
elseif (angle < 0) && (angle >= -pi/2) && (aux_angle <= -2*pi/3)
    data_1.f2 = 3;
else
    data_1.f2 = 4;
end

% Correction of angle:
if data_1.f2 == 2
    angle_c = pi - angle;
elseif data_1.f2 == 3
    angle_c = -angle - pi;
else
    angle_c = angle;
end
end