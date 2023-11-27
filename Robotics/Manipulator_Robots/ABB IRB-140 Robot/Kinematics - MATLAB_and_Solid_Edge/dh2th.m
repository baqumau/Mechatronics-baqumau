function TH = dh2th(alpha,a,theta,d)
%Función que calcula la matriz de Transformación Homogenea de un eje de
%referencia a otro, ingresándole los valores correspondientes al método
%Denavit Hartemberg de la forma (alpha,a,theta,d).[Mirar Presentación 5 - 
%Ricardo Ramirez (Dinámica de Robots UNAL)]
TH=[cos(theta) -cos(alpha)*sin(theta) sin(alpha)*sin(theta) a*cos(theta);...
    sin(theta) cos(alpha)*cos(theta) -sin(alpha)*cos(theta) a*sin(theta);...
    0          sin(alpha)             cos(alpha)            d           ;...
    0          0                      0                     1];
end