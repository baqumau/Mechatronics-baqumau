clc, clear
data_r = [];
data_s = [];
%--------------------------------------------------------------------------
% Geometrical and physical parameters of OMRs:
% Robot 1:

% Sinusiodal signal:
Ts = 10/250;                                                                % [Hz] Sample time Ts.
t = (0:Ts:10)';                                                             % Execution time.
x = 5*sin(2*pi*.1.*t);                                                      % Sine function.
counter = 0;                                                                % Ticks counter of sine function.
flag_1 = 0;                                                                 % Streaming flag.
%--------------------------------------------------------------------------
% A serial port object is constructed:
S1 = serialport("COM6",2000000);
configureTerminator(S1,"CR/LF","LF");
tic
java.lang.Thread.sleep(996);
while true
    data_r = readline(S1);
    if isempty(data_r)
        break
    else
        command = sscanf(data_r,strcat(":","%u"));
        if (isempty(command) == 0) && (command == 100) && (flag_1 == 0)
            counter = counter + 1;
            data_s = sprintf(":0,%1.4f,%1.4f,%u;\n\r",t(counter),x(counter),counter);
            writeline(S1,data_s);
            flush(S1);
        end
        if (command == 10)
            flag_1 = 1;
            disp("10th arrived...");
            flush(S1);
            break
        end
    end
    if (counter == length(x))
        flag_1 = 1;
        disp("10th didn't arrive...");
        flush(S1);
        break
    end
end
toc