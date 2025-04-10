function dataRate = main_03_test_vR2023a()
clc, clear
disp("Executing main_03_test");
% data_s = [];
time_x = []';
%--------------------------------------------------------------------------
% Setting parameters and test signals:
counter = 0;                                                                % Ticks counter of sine function.
flag_1 = 0;                                                                 % Streaming flag.
t_sleep = 8;                                                                % Java sleeping time.
iter_stop = (1000/t_sleep)*2.5*60;                                          % Iteration stop.
x1_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable x1_t.
x2_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable x2_t.
x3_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable x3_t.
x4_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable x4_t.
x5_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable x5_t.
x6_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable x6_t.
x7_t = zeros(iter_stop,1);                                                  % Preallocating memory for variable x7_t.
%--------------------------------------------------------------------------
% A serial port object is constructed:
BaudRate = 2000000;                                                         % Specify baud rate for UART communication.
S1 = serialport("COM16",BaudRate,"FlowControl","none");
configureTerminator(S1,"CR/LF","LF");
%--------------------------------------------------------------------------
tic
while true
    % java.lang.Thread.sleep(.1);                                           % .1 milliseconds delay.
    % Receiving data from UART1:
    data_r = readline(S1);
    if isempty(data_r)
        flag_1 = 1;
        break
    else
        command = sscanf(data_r,strcat(":","%u"));
        if (isempty(command) == 0) && (command == 9) && (flag_1 == 0)
            % Sinusiodal test signals:
            % Time function 1:
            if (counter == 1110) || (counter == 1130) || (counter == 1145) || (counter == 4110) || (counter == 4130) || (counter == 4145)
                x1_t(counter+1) = 3000*sin(2*pi*.002.*counter) + 10000;
            else
                x1_t(counter+1) = 3000*sin(2*pi*.002.*counter);
            end
            % Time function 2:
            if (counter == 1105) || (counter == 1132) || (counter == 1143) || (counter == 4112) || (counter == 4133) || (counter == 4149)
                x2_t(counter+1) = 1500*sin(2*pi*.002.*counter) + 1500*cos(2*pi*.008.*counter) + 10000;
            else
                x2_t(counter+1) = 1500*sin(2*pi*.002.*counter) + 1500*cos(2*pi*.008.*counter);
            end
            % Time function 3:
            if (counter == 1101) || (counter == 1128) || (counter == 1139) || (counter == 4109) || (counter == 4138) || (counter == 4145)
                x3_t(counter+1) = x1_t(counter+1) - x2_t(counter+1)/2 + 10000;
            else
                x3_t(counter+1) = x1_t(counter+1) - x2_t(counter+1)/2;
            end
            % Time function 4:
            if (counter == 1107) || (counter == 1129) || (counter == 1147) || (counter == 4107) || (counter == 4140) || (counter == 4151)
                x4_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1)).*x3_t(counter+1)/3000 + 10000;
            else
                x4_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1)).*x3_t(counter+1)/3000;
            end
            % Time function 5:
            if (counter == 1101) || (counter == 1135) || (counter == 1137) || (counter == 4102) || (counter == 4141) || (counter == 4153)
                x5_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1) + x3_t(counter+1) - x4_t(counter+1))/3 + 10000;
            else
                x5_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1) + x3_t(counter+1) - x4_t(counter+1))/3;
            end
            % Time function 6:
            if (counter == 1106) || (counter == 1133) || (counter == 1141)
                x6_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1)).*x4_t(counter+1)/3000 + x5_t(counter+1)/3000 + 10000;
            else
                x6_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1)).*x4_t(counter+1)/3000 + x5_t(counter+1)/3000;
            end
            % Time function 7:
            % x_7(counter+1) = atan2(sin(2*pi*.002.*t),cos(2*pi*.002.*t));
            % Getting and arraying sinusoidal signals:
            data_s = sprintf(":0,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f;",x1_t(counter+1),x2_t(counter+1),x3_t(counter+1),x4_t(counter+1),x5_t(counter+1),x6_t(counter+1));
            writeline(S1,data_s);
            flush(S1);
            counter = counter + 1;                                          % Increasing the counter.
            time_x(counter,1) = toc;
            tic
        end
        if (command == 10)
            disp("10th arrived...");
            flush(S1);
            break
        end
    end
    if (counter == iter_stop || toc >= 10)
        flag_1 = 1;
        disp("10th didn't arrive...");
        flush(S1);
        break
    end
end
if flag_1 == 1
    disp("There was not communication with target microcontroller");
    disp("Application finished..!");
    clear S1
else
    dataRate = 1/mean(time_x);                                              % Get transmission data rate in seconds.
    disp("Application finished..!");
    clear S1
    disp("Successful data transmission with a streaming rate in seconds of:");
    disp(dataRate);
end
end