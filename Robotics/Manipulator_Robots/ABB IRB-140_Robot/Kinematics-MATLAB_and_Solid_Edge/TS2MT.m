function A=TS2MT(S,S0,Theta,t)
%Función qeue realiza el cálculo de la matriz de transformación a partir de
%los valores obtenidos con el método de tornillo sucesivo.
%A=TS2MT(S,S0,Theta,t); calcula la matriz de transformación A en un punto
%diferenere de nuestro eje de referencia principal, ingresándole los datos
%S=[Sx,Sy,Sz]' Vector Unitario a lo largo del eje tornillo.
%S0=[S0x,S0y,S0z]' más el ángulo de rotación "Theta" y el desplazamiento de
%traslación "t". Mirar pres5.pdf de Ricardo Ramirez.
a11=((S(1,1)^2)-1)*(1-(cos(Theta)))+1;
a12=(S(1,1)*S(2,1))*(1-(cos(Theta)))-(S(3,1)*(sin(Theta)));
a13=(S(1,1)*S(3,1))*(1-(cos(Theta)))+(S(2,1)*(sin(Theta)));
a21=(S(2,1)*S(1,1))*(1-(cos(Theta)))+(S(3,1)*(sin(Theta)));
a22=((S(2,1)^2)-1)*(1-(cos(Theta)))+1;
a23=(S(2,1)*S(3,1))*(1-(cos(Theta)))-(S(1,1)*(sin(Theta)));
a31=(S(3,1)*S(1,1))*(1-(cos(Theta)))-(S(2,1)*(sin(Theta)));
a32=(S(3,1)*S(2,1))*(1-(cos(Theta)))+(S(1,1)*(sin(Theta)));
a33=((S(3,1)^2)-1)*(1-(cos(Theta)))+1;
a14=(t*S(1,1))-(S0(1,1)*(a11-1))-(S0(2,1)*a12)-(S0(3,1)*a13);
a24=(t*S(2,1))-(S0(1,1)*a21)-(S0(2,1)*(a22-1))-(S0(3,1)*a23);
a34=(t*S(3,1))-(S0(1,1)*a31)-(S0(2,1)*a32)-(S0(3,1)*(a33-1));
A=[a11 a12 a13 a14;a21 a22 a23 a24;a31 a32 a33 a34;0 0 0 1]; %Matriz de Transformación