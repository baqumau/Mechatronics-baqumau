clc, clear
data_s = [];
time_x = []';
%--------------------------------------------------------------------------
% Create an instance of the natnet client class:
fprintf('Creating natnet class object...\n')
natnetclient = natnet;
% Connect the client to the server (multicast over local loopback) modify
% for your network:
fprintf('Connecting to the server\n')
natnetclient.HostIP = '192.168.56.1';
natnetclient.ClientIP = '192.168.56.2';
natnetclient.ConnectionType = 'Multicast';
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
fprintf('\nPrinting rigid body frame data approximately every second for 10 seconds...\n\n')
%--------------------------------------------------------------------------
% Sinusiodal test signals:
Ts = 1/250;                                                                 % [Hz] Sample time Ts.
t = (0:Ts:100)';                                                            % Execution time.
x_1 = 5*sin(2*pi*.1.*t);                                                    % Time function 1.
x_2 = 5*sin(2*pi*.1.*t) + 3*cos(2*pi*.4.*t);                                % Time function 2.
x_3 = x_1 + x_2;                                                            % Time function 3.
x_4 = (x_1 + x_2).*x_3;                                                     % Time function 4.
x_5 = x_1 - x_2;                                                            % Time function 5.
x_6 = (x_1 - x_2).*x_4 + x_5;                                               % Time function 6.
counter = 0;                                                                % Ticks counter of sine function.
flag_1 = 0;                                                                 % Streaming flag.
angles = zeros(2,3);
%--------------------------------------------------------------------------
% A serial port object is constructed:
S1 = serialport("COM6",2000000);
configureTerminator(S1,"CR/LF","LF");
while (counter < length(t))
    tic
    java.lang.Thread.sleep(2);
    data = natnetclient.getFrame;                                             % Method to get current frame.
    if(isempty(data.RigidBodies(1)))
        fprintf('\tPacket is empty/stale\n')
        fprintf('\tMake sure the server is in Live mode or playing in playback\n\n')
        return
    end
    counter = counter + 1;
    for i = 1:model.RigidBodyCount
        q = quaternion([data.RigidBodies(i).qx data.RigidBodies(i).qy data.RigidBodies(i).qz data.RigidBodies(i).qw]);
        angles(i,:) = euler(q,'XYZ','frame');
    end
    % Getting and arraying data from NatNet SDK:
    data_s = sprintf(":0,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f;",data.RigidBodies(1).x*1000,data.RigidBodies(1).y*1000,angles(1,3),data.RigidBodies(2).x*1000,data.RigidBodies(2).y*1000,angles(2,3));
    % data_t = sprintf(":0,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f,%1.4f;",x_1,x_2,x_3,x_4,x_5,x_6);
    % Sending data via UART communication:
    writeline(S1,data_t);
    flush(S1);
    time_x(counter,1) = toc;
end
disp("finished..!");