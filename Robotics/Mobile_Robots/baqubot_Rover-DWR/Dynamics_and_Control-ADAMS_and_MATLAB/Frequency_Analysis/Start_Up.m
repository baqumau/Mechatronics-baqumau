%% Chirp signal:
% Parameters:
A = 1; T = 1; N = 256; k = [0:T:N-T]'; w_start = .1/T; w_end = .75/T;
myobj = sim('Test_Freq_Resp_1','SrcWorkspace','Current','StopTime',num2str(N));
Out = myobj.get('Chirp');
time = Out.time;
yrb = Out.signals.values;
% FFT Analysis:
nfft = 2^nextpow2(2*(length(time)-1));
FY = fft(yrb,nfft);                                                        % FFT of output.
l = length(FY);
M1 = 1;
sc = l/(2*(length(time)-1));
FYd = FY(M1+fix(M1/2)+sc:sc:M1+fix(M1/2)+l/2);
f = [T:T:N]'*pi/N/T;
rm = abs(FYd);
figure(1)
loglog(f,rm,'r');
%% Chirp signal applied to the plant:
A = 1; T = .001; N = 256; k = [0:T:N-T]'; w_start = .1/T; w_end = 1.5/T;
Ts = 1;
s=tf('s');
G = 1/(s^2 + .25*s + 1);
[rmbode,fbode,wb] = bode(G);                                               % Bode plot of model.
for i=1:length(rmbode)
    rmb(i)=rmbode(1,1,i);
    fb(i)=fbode(1,1,i);
end
myobj = sim('Test_Freq_Resp_2','SrcWorkspace','Current','StopTime',num2str(N));
In = myobj.get('Chirp');
Out = myobj.get('Out');
time = Out.time;
urb = In.signals.values;
yrb = Out.signals.values;
% FFT Analysis:
nfft = 2^nextpow2(2*(length(time)-1));
FY = fft(yrb,nfft);                                                        % FFT of output.
l = length(FY);
M1 = 1;
sc = l/(2*(length(time)-1));
FYd = FY(M1+fix(M1/2)+sc:sc:M1+fix(M1/2)+l/2);
FU = fft(urb,nfft);                                                        % FFT of input.
FUd = FU(M1+fix(M1/2)+sc:sc:M1+fix(M1/2)+l/2);
f = [Ts:Ts:N]'*pi/N/Ts;
rm = abs(FYd./FUd);
figure(2)
loglog(f,rm,wb,rmb), grid;
ph = 180*phase(FYd./FUd)/pi;
figure(3)
semilogx(f,ph,wb,fb), grid;
figure(4)
plot(rm.*cos(deg2rad(ph)),rm.*sin(deg2rad(ph)),'.'), grid
%% Chirp signal applied to the control system:
A = 1; T = .001; N = 256; k = [0:T:N-T]'; w_start = .1/T; w_end = 1.5/T;
Ts = 1;
s=tf('s');
G = 1/(s^2 + .25*s + 1);
K = .2/s;
[rmbode,fbode,wb] = bode(G*K);                                             % Bode plot of model.
for i=1:length(rmbode)
    rmb(i)=rmbode(1,1,i);
    fb(i)=fbode(1,1,i);
end
myobj = sim('Test_Freq_Resp_3','SrcWorkspace','Current','StopTime',num2str(N));
In = myobj.get('Error');
Out = myobj.get('Out');
time = Out.time;
urb = In.signals.values;
yrb = Out.signals.values;
% FFT Analysis:
nfft = 2^nextpow2(2*(length(time)-1));
FY = fft(yrb,nfft);                                                        % FFT of output.
l = length(FY);
M1 = 1;
sc = l/(2*(length(time)-1));
FYd = FY(M1+fix(M1/2)+sc:sc:M1+fix(M1/2)+l/2);
FU = fft(urb,nfft);                                                        % FFT of input.
FUd = FU(M1+fix(M1/2)+sc:sc:M1+fix(M1/2)+l/2);
f = [Ts:Ts:N]'*pi/N/Ts;
rm = abs(FYd./FUd);
figure(5)
loglog(f,rm,wb,rmb), grid;
ph = 180*phase(FYd./FUd)/pi;
figure(6)
semilogx(f,ph,wb,fb), grid;
figure(7)
nyquist(tf(0,1)), grid
hold on
plot(rm.*cos(deg2rad(ph)),rm.*sin(deg2rad(ph)),'.'), grid