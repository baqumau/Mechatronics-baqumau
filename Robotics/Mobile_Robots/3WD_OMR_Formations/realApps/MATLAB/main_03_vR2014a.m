function dataRate = main_03_vR2014a()
clc, clear
disp('Executing main_03');
time_x = []';
positions = zeros(2,3);                                                     % Preallocating memory for angles state vector.
angles = zeros(2,3);                                                        % Preallocating memory for angles state vector.
time_x = []';                                                               % Variable to save tic toc working time.
dataRate = 0;                                                               % Variable to save streaming data rate.
%--------------------------------------------------------------------------
% Load session in Motive -> Session 24-10-21, Hour 01:15 pm
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
fprintf('\nPrinting rigid bodies frame data, approximately to a volatile frequency of 160 Hertz...\r\n')
%--------------------------------------------------------------------------
% Setting parameters:
counter = 0;                                                                % Ticks counter of sine function.
flag_1 = 0;                                                                 % Streaming flag.
t_sleep = 8;                                                                % Java sleeping time.
iter_stop = (1000/t_sleep)*2.5*60;                                          % Iteration stop.
%--------------------------------------------------------------------------
% A serial port object is constructed:
BaudRate = 2000000;                                                         % Specify baud rate for UART communication.
% Creating Serial Object (COM6 is specified):
S1 = serial('COM6','BaudRate',BaudRate,'FlowControl','none','Terminator',{'CR/LF','LF'});
fopen(S1);                                                                  % Establishes serial communication via S1.
%--------------------------------------------------------------------------
tic
while true
    % java.lang.Thread.sleep(t_sleep);                                        % .1 milliseconds delay (approximately).
    % Receiving data from UART1:
    data_r = fscanf(S1,'%c');                                               % Read from serial peripheral until the Terminator.
    if isempty(data_r)
        flag_1 = 1;
        break
    else
        command = sscanf(data_r,strcat(':','%u'));
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
                % Getting position output variables [mm]:
                positions(i,:) = 1000*[data.RigidBodies(i).x data.RigidBodies(i).y data.RigidBodies(i).z];
                % Getting orientation output variables [rad]:
                q = quaternion([data.RigidBodies(i).qx data.RigidBodies(i).qy data.RigidBodies(i).qz data.RigidBodies(i).qw]);
                angles(i,:) = euler(q,'XYZ','frame');
            end
            % Getting and arraying data from NatNet SDK:
            data_s = sprintf(':0,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f;',(1800 + positions(1,1)),(1700 - positions(1,3)),angleCorrection_1(angles(1,2),angles(1,1)),(1800 + positions(2,1)),(1700 - positions(2,3)),angleCorrection_1(angles(2,2),angles(2,1)));
            % Sending data via UART communication:
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
        disp('10th did not arrive..!');
        % flush(S1);
        break
    end
end
if flag_1 == 1
    disp('There was not communication with target microcontroller');
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