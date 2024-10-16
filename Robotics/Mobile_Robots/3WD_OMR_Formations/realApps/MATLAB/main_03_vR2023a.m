function dataRate = main_03()
clc, clear
disp("Executing main_03");
time_x = []';
angles = zeros(2,3);                                                        % Preallocating memory for this variable.
%--------------------------------------------------------------------------
% Create an instance of the natnet client class:
fprintf('Creating natnet class object...\n')
natnetclient = natnet;
% Connect the client to the server (multicast over local loopback) modify
% for your network:
fprintf('Connecting to the server\n')
natnetclient.HostIP = '192.168.56.1';
natnetclient.ClientIP = '192.168.56.2';
natnetclient.ConnectionType = 'Unicast';
natnetclient.connect;
if(natnetclient.IsConnected == 0)
    fprintf('Client failed to connect\n')
	fprintf('\tMake sure the host is connected to the network\n')
	fprintf('\tand that the host and client IP addresses are correct\n\n')
    return
end
% Get the asset descriptions for the asset names:
model = natnetclient.getModelDescription;
if(model.RigidBodyCount < 1)
    return
end
% Poll for the rigid body data at low latency (~1 millisec):
fprintf('\nPrinting rigid bodies frame data, approximately to a volatile frequency of 50 Hertz...\r\n')
%--------------------------------------------------------------------------
% Setting parameters:
counter = 0;                                                                % Ticks counter of sine function.
flag_1 = 0;                                                                 % Streaming flag.
t_sleep = 8;                                                                % Java sleeping time.
iter_stop = (1000/t_sleep)*2.5*60;                                          % Iteration stop.
%--------------------------------------------------------------------------
% A serial port object is constructed:
BaudRate = 2000000;                                                         % Specify baud rate for UART communication.
S1 = serialport("COM6",BaudRate,"FlowControl","software");
configureTerminator(S1,"CR/LF","LF");
%--------------------------------------------------------------------------
tic
while true
    % java.lang.Thread.sleep(t_sleep);                                        % .1 milliseconds delay (approximately).
    % Receiving data from UART1:
    data_r = readline(S1);
    if isempty(data_r)
        flag_1 = 1;
        break
    else
        command = sscanf(data_r,strcat(":","%u"));
        if (isempty(command) == 0) && (command == 9) && (flag_1 == 0)
            %--------------------------------------------------------------
            % Getting data from Optitrack (Motive host PC):
            data = natnetclient.getFrame;                                   % Method to get current frame.
            if(isempty(data.RigidBodies(1)))
                fprintf('\tPacket is empty/stale\n')
                fprintf('\tMake sure the server is in Live mode or playing in playback\n\n')
                return
            end
            for i = 1:model.RigidBodyCount
                q = quaternion([data.RigidBodies(i).qx data.RigidBodies(i).qy data.RigidBodies(i).qz data.RigidBodies(i).qw]);
                angles(i,:) = euler(q,'XYZ','frame');
            end
            % Getting and arraying data from NatNet SDK:
            data_s = sprintf(":0,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f;",data.RigidBodies(1).x*1000,data.RigidBodies(1).y*1000,angles(1,3),data.RigidBodies(2).x*1000,data.RigidBodies(2).y*1000,angles(2,3));
            % Sending data via UART communication:
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