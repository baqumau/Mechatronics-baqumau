function six_link = ABBirb140(d)
%Función que me construye el robot manipulador de 6 GOD ABB IRB-140,
%Utilizando la toolbox de robótica de Peter Corke -- Mirar Pag 141 libro de
%Corke. La variable "d", es la distancia desde la muñeca hasta el punto de
%contacto del gripper.
L(1) = Link([pi/2, 352,  70, pi/2]);
L(2) = Link([pi/2,   0, 360,    0]);
L(3) = Link([   0,   0,   0, pi/2]);
L(4) = Link([   0, 380,   0,-pi/2]);
L(5) = Link([   0,   0,   0, pi/2]);
L(6) = Link([   0,65+d,   0,    0]);
six_link = SerialLink(L, 'name', 'ABBirb140');
end