% clc, clear
data_s = [];
time_x = []';
%--------------------------------------------------------------------------
% Setting test signals:
counter = 0;                                                                % Ticks counter of sine function.
flag_1 = 0;                                                                 % Streaming flag.
t_sleep = 8;                                                                % Java sleeping time.
iter_stop = (1000/t_sleep)*2.5*60;                                          % Iteration stop.
x1_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable.
x2_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable.
x3_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable.
x4_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable.
x5_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable.
x6_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable.
x7_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable.
%--------------------------------------------------------------------------
% A serial port object is constructed:
S1 = serialport("COM6",2000000);
configureTerminator(S1,"CR/LF","LF");
while (counter < iter_stop)
    tic
    % Sinusiodal test signals:
    % Time function 1:
    x1_t(counter+1) = 3000*sin(2*pi*.1.*counter);
    % Time function 2:
    x2_t(counter+1) = 1500*sin(2*pi*.1.*counter) + 1500*cos(2*pi*.4.*counter);
    % Time function 3:
    x3_t(counter+1) = x1_t(counter+1) - x2_t(counter+1)/2;
    % Time function 4:
    x4_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1)).*x3_t(counter+1)/3000;
    % Time function 5:
    x5_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1) + x3_t(counter+1) - x4_t(counter+1))/3;
    % Time function 6:
    x6_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1)).*x4_t(counter+1)/3000 + x5_t(counter+1)/3000;
    % Time function 7:
    % x_7(counter+1) = atan2(sin(2*pi*.1.*t),cos(2*pi*.1.*t));
    % Getting and arraying sinusoidal signals:
    data_s = sprintf(":0,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f;",x1_t(counter+1),x2_t(counter+1),x3_t(counter+1),x4_t(counter+1),x5_t(counter+1),x6_t(counter+1));
    % Sending data via UART communication:
    writeline(S1,data_s);
    flush(S1);
    java.lang.Thread.sleep(t_sleep);                                        % Sleeping routine.
    counter = counter + 1;                                                  % Increasing the counter.
    time_x(counter,1) = toc;
    % Receiving data from UART:
    % data_r = readline(S1);
    % if isempty(data_r)
    %     break
    % end
end
disp("finished..!");
clear S1