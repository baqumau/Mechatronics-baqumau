%Programa para el cálculo de torques en cada articulación, utilizando la
%toolbox de robótica de Peter Corke.
Arm=ABBirb140(100);
Arm.base=[rotz(deg2rad(90)) [0 0 0]';0 0 0 1];
%Gravedad en la base en mm/s^2
Arm.gravity=Arm.gravity*1000;
%Asignándole masa a los eslabones
Arm.links(1).m=15.098;
Arm.links(2).m=4.359;
Arm.links(3).m=3.356;
Arm.links(4).m=1.559;
Arm.links(5).m=0.165;
Arm.links(6).m=0;
%Asignándole centro de gravedad a los eslabones desde el marco base y
%tomando la posición de (home).
Arm.links(1).r=[-27.074 -14.614 185.333];
Arm.links(2).r=[84.704 61.251 519.509];
Arm.links(3).r=[-7.882 83.501 707.894];
Arm.links(4).r=[5.962 389.666 712.445];
Arm.links(5).r=[1.954 475.505 712];
Arm.links(6).r=[1.954 475.555 712];
%Asignándole matriz de inercia a los eslabones
Arm.links(1).I=rotz(deg2rad(90))*[0.372 -0.016 -0.086; -0.016 0.435 -0.047; -0.086 -0.047 0.34]*inv(rotz(deg2rad(90)));
Arm.links(2).I=rotz(deg2rad(90))*[0.115 -6.692e-5 1.923e-4; -6.692e-5 0.094 0.016; 1.923e-4 0.016 0.038]*inv(rotz(deg2rad(90)));
Arm.links(3).I=rotz(deg2rad(90))*[0.021 0.002 2.096e-4; 0.002 0.052 1.176e-4; 2.096e-4 1.176e-4 0.049]*inv(rotz(deg2rad(90)));
Arm.links(4).I=rotz(deg2rad(90))*[0.004 4.763e-4 -5.537e-5; 4.763e-4 0.007 5.125e-5; -5.537e-5 5.125e-5 0.008]*inv(rotz(deg2rad(90)));
Arm.links(5).I=rotz(deg2rad(90))*[1.13e-4 -8.198e-6 -1.258e-10; -8.198e-6 2.975e-4 -8.298e-12; -1.258e-10 -8.298e-12 2.283e-4]*inv(rotz(deg2rad(90)));
Arm.links(6).I=zeros(3);