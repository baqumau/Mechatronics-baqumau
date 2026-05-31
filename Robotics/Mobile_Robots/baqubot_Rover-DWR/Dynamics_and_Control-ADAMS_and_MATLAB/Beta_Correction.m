function Beta_c = Beta_Correction(u)

persistent data

f_ini = 0;
if ~isstruct(data)
    f_ini = 1;
else
    f_ini = 0;
end

% Valores iniciales de la función:
if f_ini
    % Incremento:
    data.j = 0;
    % Flags:
    data.f1 = 0;
    data.f2 = 0;
    % Estado discreto:
    data.x = 0;
end

% Algoritmo de corrección del ángulo de entrada [u] a medición absoluta:
% Reconocimiento del cuadrante del ángulo:
if u > 0 && u <= pi/2
    data.f2 = 1;
elseif u > pi/2 && u <= pi
    data.f2 = 2;
elseif u > -pi && u <= -pi/2
    data.f2 = 3;
else
    data.f2 = 4;
end
% Reconocimiento del cuadrante del ángulo retardado:
if data.x > 0 && data.x <= pi/2
    data.f1 = 1;
elseif data.x > pi/2 && data.x <= pi
    data.f1 = 2;
elseif data.x > -pi && data.x <= -pi/2
    data.f1 = 3;
else
    data.f1 = 4;
end
% Adición de 2*pi:
if data.f1 == 2 && data.f2 == 3
    data.j = data.j + 2;
end
% Sustracción de 2*pi:
if data.f1 == 3 && data.f2 == 2
    data.j = data.j - 2;
end
% Corrección del ángulo:
Beta_c = data.j*pi + u;

% Actualizo el estado discreto [x = uz^(-1)]:
data.x = u;
end