function TH = dh2th(alpha,a,theta,d)
%Funci�n que calcula la matriz de Transformaci�n Homogenea de un eje de
%referencia a otro, ingres�ndole los valores correspondientes al m�todo
%Denavit Hartemberg de la forma (alpha,a,theta,d).[Mirar Presentaci�n 5 - 
%Ricardo Ramirez (Din�mica de Robots UNAL)]
TH=[cos(theta) -cos(alpha)*sin(theta) sin(alpha)*sin(theta) a*cos(theta);...
    sin(theta) cos(alpha)*cos(theta) -sin(alpha)*cos(theta) a*sin(theta);...
    0          sin(alpha)             cos(alpha)            d           ;...
    0          0                      0                     1];
end