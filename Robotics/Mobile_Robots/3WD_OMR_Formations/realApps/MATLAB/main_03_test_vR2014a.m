function dataRate = main_03_test_vR2014a()
clc, clear
disp('Executing main_03_test');
% data_s = [];
time_x = []';                                                               % Variable to save tic toc working time.
dataRate = 0;                                                               % Variable to save streaming data rate.
%--------------------------------------------------------------------------
% Setting parameters and test signals:
counter = 0;                                                                % Ticks counter of sine function.
flag_1 = 0;                                                                 % Streaming flag.
Ts = 1/160;                                                                 % Sample time in seconds.
t_sleep = 8;                                                                % Java sleeping time.
iter_stop = (2000/t_sleep)*9.5*60;                                          % Iteration stop.
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
%--------------------------------------------------------------------------
% Creating Serial Object (COM6 is specified for WF32):
% S1 = serial('COM6','BaudRate',BaudRate,'FlowControl','none','Terminator',{'CR/LF','LF'});
% Creating Serial Object (COM16 is specified for TI LAUNCHPAD):
S1 = serial('COM16','BaudRate',BaudRate,'FlowControl','none','Terminator',{'CR/LF','LF'});
%--------------------------------------------------------------------------
fopen(S1);                                                                  % Establishes serial communication via S1.
tic
while true
%     java.lang.Thread.sleep(1);                                              % .1 milliseconds delay.
    % Receiving data from UART1:
    data_r = fscanf(S1,'%c');                                               % Read from serial peripheral until the Terminator.
    if isempty(data_r)
        flag_1 = 1;
        break
    else
        command = sscanf(data_r,strcat(':','%u'));
        if (isempty(command) == 0) && (command == 9) && (flag_1 == 0)
            % Sinusiodal test signals:
            % Time function 1:
            x1_t(counter+1) = 3000*sin(2*pi*.02.*counter*Ts);
            % Time function 2:
            x2_t(counter+1) = 1500*sin(2*pi*.02.*counter*Ts) + 1500*cos(2*pi*.08.*counter*Ts);
            % Time function 3:
            x3_t(counter+1) = x1_t(counter+1) - x2_t(counter+1)/2;
            % Time function 4:
            x4_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1)).*x3_t(counter+1)/3000;
            % Time function 5:
            x5_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1) + x3_t(counter+1) - x4_t(counter+1))/3;
            % Time function 6:
            x6_t(counter+1) = (x1_t(counter+1) - x2_t(counter+1)).*x4_t(counter+1)/3000 + x5_t(counter+1)/3000;
            % Time function 7:
            % x_7(counter+1) = atan2(sin(2*pi*.002.*counter*Ts),cos(2*pi*.002.*counter*Ts));
            % Getting and arraying sinusoidal signals:
            data_s = sprintf(':0,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f;',x1_t(counter+1),x2_t(counter+1),x3_t(counter+1),x4_t(counter+1),x5_t(counter+1),x6_t(counter+1));
            fprintf(S1,data_s);                                             % Write data to serial peripheral.
            % flush(S1);
            counter = counter + 1;                                          % Increasing the counter.
            time_x(counter,1) = toc;
            tic
        end
        if (command == 10)
            disp('10th arrived...');
            % flush(S1);
            break
        end
    end
    if (counter == iter_stop || toc >= 10)
        flag_1 = 1;
        disp('10th did not arrive..!');
        % flush(S1);
        break
    end
end
if flag_1 == 1
    disp('There was not communication with target microcontroller.');
    disp('Application finished..!');
    objs = instrfind;                                                       % Find all objects.
    fclose(objs);                                                           % Finishes all serial objects, including communication with COM6.
    delete(objs);                                                           % Delete objects.
else
    dataRate = 1/mean(time_x);                                              % Get transmission data rate in seconds.
    disp('Application finished..!');
    disp('Successful data transmission with a streaming rate in seconds of:');
    disp(dataRate);
    objs = instrfind;                                                       % Find all objects.
    fclose(objs);                                                           % Finishes all serial objects, including communication with COM6.
end
end