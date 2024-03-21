% Start Up:
clc, clear
clear functions;
% Nonlinear Model:
Bot_3
% adams_sys
% Control system:
Control_Schematic_9
Ts=1/100;
%% Control System of Angular Velocity:
% Parameters of baqubot:
J = 52.91;                         %[kg*mm^2], Mass moment of inertia of the right and left wheels.
R = 50;                            %[mm], Radius of the right and left wheels.
Mt = 1.245;                        %[kg], Total mass of the robot.
b = 156;                           %[mm], Distance between both wheels.
Kappa = (1/R)/((J/R)+(Mt*R*.4));   %[--], Coefficient.
s = tf('s');
% Modelo nominal:
g0 = Kappa/s;
% Función de peso asociada a la incertidumbre:
wd = (s+1.27)/2.54;
% Función de peso asociado al desempeño:
we = (s+.1)/(1.5*s);
% Zona de diseño (Entre las gráficas azul y verde para bajas y altas frecuencias):
figure(1)
bodemag(we,1/wd), grid
hold on
% Función propuesta para el lazo abierto:
ld = g0*150*(s^2+3*s+.55^2)/(s*(s+2));
% Verificación que el lazo interno se ubique dentro de la zona:
bodemag(ld,g0)
legend('we(s)','1/wd(s)','l(s)','g0(s)')
% Controlador:
k = minreal(ld/g0);
% Función de sensibilidad complementaria:
tg = minreal(g0*k/(1 + g0*k));
% Función de sensibilidad:
sg = minreal(1/(1 + g0*k));
% Estabilidad robusta:
figure(2)
bodemag(tg*wd,we*sg,tg*wd+we*sg), grid
legend('ER','PN','PR')
[rk,pk,kk] = residue(k.num{:},k.den{:});
k1z = c2d(ceil(rk(1,1))/(s-floor(pk(1,1))),Ts,'tustin');
k2 = floor(rk(2,1));
k3 = kk;
ka = .5;
%% Path tracking:
desired_path=My_paths(7,Ts);
x_0 = 2500;
y_0 = 2500;
%% Control system of path tracking:
K1 = .23;
K2 = .83;
K3 = 12000;
Kn = .0019;
Eps = .1;
%% Derivative + Filter:
Dif_Fz = c2d(tf([49 0],[1 14 49]),Ts,'tustin');
%% Experimental frequency response:
% Binary Pseudo-rand signal:
% N = 256;
% To = Ts;
% prbs.time = [0:.1:N];
% mag = .4;
% prbs.signals.values = sign(randn(length(prbs.time),1))*mag;                % Señal de entrada binaria pseudo-aleatoria.
% % Simulation:
% myobj = sim('Control_Schematic_10','SrcWorkspace','Current','StopTime',num2str(N));
% Out = myobj.get('output');
% In = myobj.get('input');
% time = In.time;
% urb = In.signals.values;
% yrb = Out.signals.values;
% % FFT Analysis:
% nfft = 2^nextpow2(2*(length(time)-1));
% FY = fft(yrb,nfft);                                                        % FFT of output.
% l = length(FY);
% M1 = 1;
% sc = l/(2*(length(time)-1));
% FYd = FY(M1+fix(M1/2)+sc:sc:M1+fix(M1/2)+l/2);
% FU = fft(urb,nfft);                                                        % FFT of input.
% FUd = FU(M1+fix(M1/2)+sc:sc:M1+fix(M1/2)+l/2);
% f = [To:To:N]'*pi/N/To;
% rm = abs(FYd./FUd);
% figure(5)
% loglog(f,rm), grid;
% ph = 180*phase(FYd./FUd)/pi;
% figure(6)
% semilogx(f,ph), grid;
% figure(7)
% nyquist(tf(0,1)), grid
% hold on
% plot(rm([1:4300],1).*cos(deg2rad(ph([1:4300],1))),rm([1:4300],1).*sin(deg2rad(ph([1:4300],1))),'.'), grid
% xlim([-1.5 1]);
% ylim([-4 1]);
% xlabel('Real axis');
% ylabel('imaginary axis');
% title('Nyquist diagram');