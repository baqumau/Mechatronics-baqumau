function Beta_c = Beta_Correction_1b(u)

persistent data_1

f_ini = 0;
if ~isstruct(data_1)
    f_ini = 1;
else
    f_ini = 0;
end

% Valores iniciales de la función:
if f_ini
    % Incremento:
    data_1.j = 0;
    % Flags:
    data_1.f1 = 1;
    data_1.f2 = 1;
    % Estado discreto:
    data_1.x = u;
end

% Algoritmo de corrección del ángulo de entrada [u] a medición absoluta:
% Reconocimiento del cuadrante del ángulo:
if u >= 0 && u <= pi/2
    data_1.f2 = 1;
elseif u > pi/2 && u <= pi
    data_1.f2 = 2;
elseif u < -pi
    data_1.f2 = 2;
elseif u > -pi && u <= -pi/2
    data_1.f2 = 3;
else
    data_1.f2 = 4;
end
% Reconocimiento del cuadrante del ángulo retardado:
if data_1.x >= 0 && data_1.x <= pi/2
    data_1.f1 = 1;
elseif data_1.x > pi/2 && data_1.x <= pi
    data_1.f1 = 2;
elseif data_1.x < -pi
    data_1.f1 = 2;
elseif data_1.x > -pi && data_1.x <= -pi/2
    data_1.f1 = 3;
else
    data_1.f1 = 4;
end
% Adición de 2*pi:
if data_1.f1 == 2 && data_1.f2 == 3
    data_1.j = data_1.j + 2;
end
if data_1.f1 == 1 && data_1.f2 == 3
    data_1.j = data_1.j + 2;
end
    
% Sustracción de 2*pi:
if data_1.f1 == 3 && data_1.f2 == 2
    data_1.j = data_1.j - 2;
end
% Corrección del ángulo:
Beta_c = data_1.j*pi + u;

% Actualizo el estado discreto [x = uz^(-1)]:
data_1.x = u;
end