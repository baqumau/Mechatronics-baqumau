clc, clear
data_s = [];
time_x = []';
%--------------------------------------------------------------------------
% Sinusiodal test signals:
Ts = 1/250;                                                                 % [Hz] Sample time Ts.
t = (0:Ts:100)';                                                            % Execution time.
x_1 = 3000*sin(2*pi*.01.*t);                                                % Time function 1.
x_2 = 1500*sin(2*pi*.01.*t) + 1500*cos(2*pi*.04.*t);                        % Time function 2.
x_3 = x_1 - x_2/2;                                                          % Time function 3.
x_4 = (x_1 - x_2).*x_3/3000;                                                % Time function 4.
x_5 = (x_1 - x_2 + x_3 - x_4)/3;                                            % Time function 5.
x_6 = (x_1 - x_2).*x_4/3000 + x_5/3000;                                     % Time function 6.
x_7 = atan2(sin(2*pi*.01.*t),cos(2*pi*.01.*t));                             % Time function 7.
counter = 0;                                                                % Ticks counter of sine function.
flag_1 = 0;                                                                 % Streaming flag.
angles = zeros(2,3);
%--------------------------------------------------------------------------
% A serial port object is constructed:
S1 = serialport("COM8",250000);
configureTerminator(S1,"CR/LF","LF");
while (counter < length(t))
    tic
    java.lang.Thread.sleep(6.25);
    counter = counter + 1;
    % Getting and arraying sinusoidal signals:
    data_s = sprintf(":0,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f;",x_1(counter,1),x_2(counter,1),x_3(counter,1),x_4(counter,1),x_5(counter,1),x_6(counter,1));
    % Sending data via UART communication:
    writeline(S1,data_s);
    flush(S1);
    time_x(counter,1) = toc;
    % Receiving data from UART:
    % data_r = readline(S1);
    % if isempty(data_r)
    %     break
    % end
end
disp("finished..!");
clear S1