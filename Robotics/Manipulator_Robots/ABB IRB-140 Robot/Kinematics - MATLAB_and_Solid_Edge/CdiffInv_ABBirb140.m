function [dThetas,ddThetas] = CdiffInv_ABBirb140(WV,dWV,Thetas)
%[dThetas,J] = CdiffInv_ABBirb140(W_V,Thetas) --- Función que calcula las
%velocidades y aceleraciones de las articulaciones del robot ABBIRB-140.
%
%dThetas=[dTh1/dt;dTh2/dt;dTh3/dt;dTh4/dt;dTh5/dt;dTh6/dt]. Velocidades de
%las articulaciones a partir de las distintas velocidades que se presentan
%en el efector final.
%
%WV=[Wx;Wy;Wz;Vox;Voy;Voz]. Velocidades en el espacio del efector final.
%
%dWV=[dWx;dWy;dWz;dVox;dVoy;dVoz]. Aceleraciones en el espacio del efector final.
%
%Thetas=[Th1;Th2;Th3;Th4;Th5;Th6]. Ángulos de rotación del manipulador.
%
%Jinv. Matriz jacobiana inversa.
%
%® Copyright Ing. Mauro Baquero. Universidad Nacional de Colombia -- 2012.
L0=70; L1=352; L2=360; L3=254; L4=126; L5=65;
Th1=Thetas(1,1); Th2=Thetas(2,1); Th3=Thetas(3,1); Th4=Thetas(4,1); Th5=Thetas(5,1); Th6=Thetas(6,1);
T_30=inv([sin(Th2+Th3)*sin(Th1), cos(Th1), -cos(Th2+Th3)*sin(Th1), 0, 0, 0; -sin(Th2+Th3)*cos(Th1), sin(Th1), cos(Th2+Th3)*cos(Th1), 0, 0, 0; cos(Th2+Th3), 0, sin(Th2+Th3), 0, 0, 0; cos(Th1)*(L1*sin(Th2+Th3)-L0*cos(Th2+Th3)+L2*sin(2*Th2+Th3)), -sin(Th1)*(L1+L2*cos(Th2)), -cos(Th1)*(L1*cos(Th2+Th3)+L0*sin(Th2+Th3)+L2*cos(2*Th2+Th3)),  sin(Th2+Th3)*sin(Th1), cos(Th1), -cos(Th2+Th3)*sin(Th1); sin(Th1)*(L0*cos(Th2+Th3)+L1*sin(Th2+Th3)+L2*sin(Th3)), cos(Th1)*(L1+L2*cos(Th2)), -sin(Th1)*(L1*cos(Th2+Th3)-L0*sin(Th2+Th3)+L2*cos(Th3)), -sin(Th2+Th3)*cos(Th1), sin(Th1), cos(Th2+Th3)*cos(Th1); 0, L2*sin(Th2)-L0, 0, cos(Th2+Th3), 0, sin(Th2+Th3)]);
WV3=T_30*WV;
%Matriz Jacobiana expresada en el marco de referencia "3":
J3=[cos(Th2+Th3),            0, 0, 0,         -sin(Th4),          cos(Th4)*sin(Th5);
               0,            1, 1, 0,          cos(Th4),          sin(Th4)*sin(Th5);
    sin(Th2+Th3),            0, 0, 1,                 0,                   cos(Th5);
               0,  L2*sin(Th3), 0, 0, -cos(Th4)*(L3+L4), -sin(Th4)*sin(Th5)*(L3+L4);
  L2*sin(Th2)-L0,            0, 0, 0, -sin(Th4)*(L3+L4),  cos(Th4)*sin(Th5)*(L3+L4);
               0, -L2*cos(Th3), 0, 0,                 0,                         0];
dThetas=inv(J3)*WV3; %Velocidades en las articulaciones
dTh1=dThetas(1,1); dTh2=dThetas(2,1); dTh3=dThetas(3,1);
dTh4=dThetas(4,1); dTh5=dThetas(5,1); dTh6=dThetas(6,1);
Jinv=inv(J3)*T_30;
%Derivada de la matriz Jacobiana expresada en el marco de referencia "3":
dJ3=[-sin(Th2+Th3)*(dTh2+dTh3),                0, 0, 0,         -cos(Th4)*dTh4,           -(sin(Th4)*dTh4*sin(Th5))+(cos(Th4)*cos(Th5)*dTh5);
                             0,                0, 0, 0,         -sin(Th4)*dTh4,            (cos(Th4)*dTh4*sin(Th5))+(cos(Th5)*dTh5*sin(Th4));
      cos(Th2+Th3)*(dTh2+dTh3),                0, 0, 0,                      0,                                               -sin(Th5)*dTh5;
                             0, L2*cos(Th3)*dTh3, 0, 0,  (L3+L4)*sin(Th4)*dTh4, -(L3+L4)*((cos(Th4)*dTh4*sin(Th5))+(cos(Th5)*dTh5*sin(Th4)));
              L2*cos(Th2)*dTh2,                0, 0, 0, -(L3+L4)*cos(Th4)*dTh4,  (L3+L4)*((cos(Th4)*dTh5*cos(Th5))-(sin(Th5)*dTh4*sin(Th4)));
                             0, L2*sin(Th3)*dTh3, 0, 0,                      0,                                                           0];
dWV3=T_30*dWV;
ddThetas=inv(J3)*(dWV3-(dJ3*dThetas)); %Aceleraciones en las articulaciones
end