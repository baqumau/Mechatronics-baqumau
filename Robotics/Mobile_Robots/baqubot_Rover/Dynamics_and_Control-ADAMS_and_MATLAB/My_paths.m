function desired_path = My_paths(n,Ts)
% Different kind of trajectories for baqubot.
switch n
    case 1
        % This trajectory is a straight line with a linear velocity profile
        % (ramp type), from 0 to 10 mm/s on y-axis.
        % y_0 = 200;
        dy1=[0:Ts:15]*(60/15);
        dy2=ones(1,length([15+Ts:Ts:50-Ts]))*60;
        dy3=ones(1,length([50:Ts:65]))*60-[0:Ts:15]*(60/15);
        dy4=[65+Ts:Ts:388.546]*0;
        dy=[dy1 dy2 dy3 dy4];
        %------------------------------------------------------------------
        % x_0 = 2500.
        dx=[0:Ts:388.546]*0;
        %------------------------------------------------------------------
        da=[0:Ts:388.546]*0;
        %------------------------------------------------------------------
        alpha=[0:Ts:388.546]*0;
        %------------------------------------------------------------------
        desired_path.time=[0:Ts:388.546]';
        desired_path.signals.values=[dx' dy' da' alpha'];
    case 2
        % This trajectory is a large square trajectory along the road.
        % y_0 = 200.
        dy1=[0:Ts:5]*8;
        dy2=ones(1,length([5+Ts:Ts:20]))*40;
        dy3=ones(1,length([20+Ts:Ts:25]))*40-[Ts:Ts:5]*8;
        dy4=[Ts:Ts:2.5]*0;
        dy5=[Ts:Ts:.71]*0;
        dy6=[Ts:Ts:2.5]*0;
        dy7=[Ts:Ts:40]*0;
        dy8=40*cos([Ts:Ts:15.71]*(-.1)+(pi/2));
        dy9=ones(1,length([Ts:Ts:70]))*40;
        dy10=40*sin([Ts:Ts:15.71]*(-.1)+(pi/2));
        dy11=[Ts:Ts:75]*0;
        dy12=40*cos([Ts:Ts:15.71]*(-.1)-(pi/2));
        dy13=ones(1,length([Ts:Ts:70]))*(-40);
        dy14=-40*sin([Ts:Ts:15.71]*(-.1)+(pi/2));
        dy15=[Ts:Ts:35]*0;
        dy16=[Ts:Ts:5]*0;
        dy=[dy1 dy2 dy3 dy4 dy5 dy6 dy7 dy8 dy9 dy10 dy11 dy12 dy13 dy14...
            dy15 dy16];
        %------------------------------------------------------------------
        % x_0 = 2500;
        dx1=[0:Ts:25]*0;
        dx2=[Ts:Ts:2.5]*0;
        dx3=[Ts:Ts:.71]*0;
        dx4=[Ts:Ts:2.5]*0;
        dx5=[Ts:Ts:5]*(-8);
        dx6=ones(1,length([Ts:Ts:35]))*(-40);
        dx7=-40*sin([Ts:Ts:15.71]*(-.1)+(pi/2));
        dx8=ones(1,length([Ts:Ts:70]))*0;
        dx9=40*cos([Ts:Ts:15.71]*(-.1)+(pi/2));
        dx10=ones(1,length([Ts:Ts:75]))*40;
        dx11=40*sin([Ts:Ts:15.71]*(-.1)+(pi/2));
        dx12=ones(1,length([Ts:Ts:70]))*0;
        dx13=-40*cos([Ts:Ts:15.71]*(-.1)+(pi/2));
        dx14=ones(1,length([Ts:Ts:35]))*(-40);
        dx15=ones(1,length([Ts:Ts:5]))*(-40)+[Ts:Ts:5]*8;
        dx=[dx1 dx2 dx3 dx4 dx5 dx6 dx7 dx8 dx9 dx10 dx11 dx12 dx13 dx14 dx15];
        %------------------------------------------------------------------
        da1=[0:Ts:25]*0;
        da2=[Ts:Ts:2.5]*.1955;
        da3=ones(1,length([Ts:Ts:.71]))*.4888;
        da4=ones(1,length([Ts:Ts:2.5]))*.4888-[Ts:Ts:2.5]*.1955;
        da5=[Ts:Ts:40]*0;
        da6=ones(1,length([Ts:Ts:15.71]))*(-.1);
        da7=ones(1,length([Ts:Ts:70]))*0;
        da8=ones(1,length([Ts:Ts:15.71]))*(-.1);
        da9=[Ts:Ts:75]*0;
        da10=ones(1,length([Ts:Ts:15.71]))*(-.1);
        da11=[Ts:Ts:70]*0;
        da12=ones(1,length([Ts:Ts:15.71]))*(-.1);
        da13=[Ts:Ts:35]*0;
        da14=[Ts:Ts:5]*0;
        da=[da1 da2 da3 da4 da5 da6 da7 da8 da9 da10 da11 da12 da13 da14];
        %------------------------------------------------------------------
        alpha1=[0:Ts:25]*0;
        alpha2=(1/2)*.1955*[Ts:Ts:2.5].^2;
        alpha3=[Ts:Ts:.71]*.4888 + 35.0041*pi/180;
        alpha4=[Ts:Ts:2.5]*.4887 - (1/2)*.1955*[Ts:Ts:2.5].^2 + 55.0005*pi/180;
        alpha5=ones(1,length([Ts:Ts:40]))*(pi/2);
        alpha6=([Ts:Ts:15.71]*(-.1))+(pi/2);
        alpha7=ones(1,length([Ts:Ts:70]))*0;
        alpha8=([Ts:Ts:15.71]*(-.1));
        alpha9=ones(1,length([Ts:Ts:75]))*(-pi/2);
        alpha10=([Ts:Ts:15.71]*(-.1))-(pi/2);
        alpha11=ones(1,length([Ts:Ts:70]))*(-pi);
        alpha12=([Ts:Ts:15.71]*(-.1))-(pi);
        alpha13=ones(1,length([Ts:Ts:35]))*(-3*pi/2);
        alpha14=ones(1,length([Ts:Ts:5]))*(-3*pi/2);
        alpha=[alpha1 alpha2 alpha3 alpha4 alpha5 alpha6 alpha7 alpha8 alpha9...
               alpha10 alpha11 alpha12 alpha13 alpha14];
        %------------------------------------------------------------------
        desired_path.time=[0:Ts:388.55]';
        desired_path.signals.values=[dx' dy' da' alpha'];
    case 3
        % This trajectory is a small circumference trajectory along the road at the simulation time.
        desired_path.time=[0:Ts:1000]';
        da = ones(length(desired_path.time),1)*(-60/1500);
        alpha = da.*desired_path.time - 3*pi/4;
        dx = -60*sin(alpha);   % x_0 = 2500 + 750.
        dy = 60*cos(alpha);    % y_0 = 2500 + 750.
        desired_path.signals.values=[dx dy da alpha];
    case 4
        % This trayectory is the same than RIAI paper of Hebert Sira-Ramírez
        desired_path.time=[0:Ts:400]';
        psi = 0;
        w = 1/20;
        m = 600;
        dx = 3*w*m*cos(3*w*desired_path.time + psi).*sin(2*w*desired_path.time + psi) + 2*w*m*sin(3*w*desired_path.time + psi).*cos(2*w*desired_path.time + psi);   % x_0 = 1500.
        dy = 3*w*m*cos(3*w*desired_path.time + psi).*cos(2*w*desired_path.time + psi) - 2*w*m*sin(3*w*desired_path.time + psi).*sin(2*w*desired_path.time + psi);   % y_0 = 3000.
        beta = -atan2(dx,dy);
        k = 0;
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) > -pi && beta(i-1,1) < 0
                k = k + 1;
            end
            alpha(i,1) = -k*2*pi + beta(i,1);
        end
        da(1,1) = 0;
        for i = 2:length(alpha)
            da(i,1) = (alpha(i,1) - alpha(i-1,1))/Ts;
        end
        desired_path.signals.values=[dx dy da alpha];
    case 5
        % This trajectory is an incomplete circumference trajectory along the road at certain time.
        desired_path.time=[0:Ts:800]';
        da1 = ones(length([0:Ts:700]'),1)*(-10/1500);
        da2 = ones(length([700+Ts:Ts:800]'),1)*(-10/1500) + (10/1500).*[Ts:Ts:100]'./100;
        da = [da1;da2];
        alpha1 = da1.*[0:Ts:700]' + pi/2;
        alpha2 = da2.*[Ts:Ts:100]' + alpha1(end,1);
        alpha = [alpha1;alpha2];
        dx1 = -10*sin(alpha1);                              % x_0 = 2500.
        dx2 = (-10 + 10.*[Ts:Ts:100]'./100).*sin(alpha2);
        dx = [dx1;dx2];
        dy1 = 10*cos(alpha1);                               % y_0 = 1000.
        dy2 = (10 - 10.*[Ts:Ts:100]'./100).*sin(alpha2);
        dy = [dy1;dy2];
        desired_path.signals.values=[dx dy da alpha];
    case 6
        % This trayectory is a short right line in reverse:
        desired_path.time=[0:Ts:65]';
        % y_0 = 200;
        dy1=[0:Ts:15]*(-1.5/15);
        dy2=ones(1,length([15+Ts:Ts:50-Ts]))*(-1.5);
        dy3=ones(1,length([50:Ts:65]))*(-1.5)+[0:Ts:15]*(1.5/15);
        dy=[dy1 dy2 dy3];
        %------------------------------------------------------------------
        % x_0 = 2500.
        dx=[0:Ts:65]*0;
        %------------------------------------------------------------------
        da=[0:Ts:65]*0;
        %------------------------------------------------------------------
        alpha=ones(1,length([0:Ts:65]))*pi;
        %------------------------------------------------------------------
        desired_path.signals.values=[dx' dy' da' alpha'];
    case 7
        % This trayectory is the same than Mingyue's paper in Nonlinear dynamics journal.
        desired_path.time=[0:Ts:100]';          % Stop time: 80 secs.
        m = 2000;
        dx = m*cos(desired_path.time./8)./8;    % x_0 = 2500.
        dy = m*cos(desired_path.time./4)./4;    % y_0 = 2500.
        beta = -atan2(dx,dy);
        k = 0;
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) > -pi && beta(i-1,1) < 0
                k = k + 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) < pi && beta(i-1,1) > 0
                k = k - 1;
            end
            alpha(i,1) = -k*2*pi + beta(i,1);
        end
        da(1,1) = 0;
        for i = 2:length(alpha)
            da(i,1) = (alpha(i,1) - alpha(i-1,1))/Ts;
        end
        desired_path.signals.values=[dx dy da alpha];
    case 8
        % This trajectory is a circumference with a constant linear
        % velocity for the multirobot system (two-robot cluster), and the
        % associated branch to second robot has an oscillatory movement.
        desired_path.time = [0:Ts:500]';                                        % Stop time: 500 secs.
        Vc = 80;                                                                % [mm/s] linear velocity of cluster centriod.
        alpha_0 = pi/4;
        da = -(Vc/2000)*ones(length(desired_path.time),1);                      % \alpha(0) = pi/4 rad.
        dx = -Vc*sin(-Vc/2000.*desired_path.time + alpha_0);                    % x(0) = 2500 - 2000*cos(\alpha(0)) = 1.0858e+03 mm.
        dy = Vc*cos(-Vc/2000.*desired_path.time + alpha_0);                     % y(0) = 2500 - 2000*sin(\alpha(0)) = 1.0858e+03 mm.
        alpha = -Vc/2000.*desired_path.time + alpha_0;
        %------------------------------------------------------------------
        desired_path.signals.values=[dx dy da alpha];
    case 10
        % This trajectory is a small circumference trajectory along the road at the simulation time.
        % Omnidirectional three-wheeled robot:
        desired_path.time = [0:Ts:1000]';
        dphi = ones(length(desired_path.time),1)*(-80/2000);
        ddphi = zeros(length(desired_path.time),1);
        phi = dphi.*desired_path.time + pi/4; % phi_0 = pi/4.
        dx = -80*sin(phi);   % x_0 = 5000 - 2000*cos(phi_0) = 3.5858e3 mm.
        ddx = -80*cos(phi).*dphi;
        dy = 80*cos(phi);    % y_0 = 3000 - 2000*sin(phi_0) = 1.5858e3 mm.
        ddy = -80*sin(phi).*dphi;
        desired_path.signals.values = [dx dy dphi phi ddx ddy ddphi];
    case 11
        % This trajectory is a small circumference trajectory along the road at the simulation time.
        % Omnidirectional three-wheeled robot:
        desired_path.time = [0:Ts:1000]';
        dphi = ones(length(desired_path.time),1)*(-80/2000);
        ddphi = zeros(length(desired_path.time),1);
        phi = dphi.*desired_path.time + pi/4;       % phi_0 = pi/4.
        dx = -80*sin(phi);                          % x_0 = 5000 - 2000*cos(phi_0) = 3.5858e3 mm.
        ddx = -80*cos(phi).*dphi;
        dy = 80*cos(phi);                           % y_0 = 3000 - 2000*sin(phi_0) = 1.5858e3 mm.
        ddy = -80*sin(phi).*dphi;
        desired_path.signals.values = [dx dy dphi*0 phi*0 ddx ddy ddphi*0];
    case 12
        % This trajectory is a small circumference trajectory along the road at the simulation time.
        % Omnidirectional three-wheeled robot:
        desired_path.time = [0:Ts:1600]';
        dphi = ones(length(desired_path.time),1)*(-40/400);
        ddphi = zeros(length(desired_path.time),1);
        phi = dphi.*desired_path.time + pi/4; % phi_0 = pi/4.
        dx = -40*sin(phi);   % x_0 = 5000 - 400*cos(phi_0) = 4.7172e+03 mm.
        ddx = -40*cos(phi).*dphi;
        dy = 40*cos(phi);    % y_0 = 3000 - 400*sin(phi_0) = 2.7172e+03 mm.
        ddy = -40*sin(phi).*dphi;
        desired_path.signals.values = [dx dy dphi*0 phi*0 ddx ddy ddphi*0];
    case 13
        % This trayectory is the same than Mingyue's paper in Nonlinear dynamics journal.
        % Omnidirectional three-wheeled robot:
        desired_path.time = [0:Ts:260]';                % Stop time: 160 secs.
        m = 2000;
        dx = m*cos(desired_path.time./25)./25;          % x_0 = 2500.
        ddx = -m*sin(desired_path.time./25)./25^2;      % dx_0 = m/25.
        dy = m*cos(desired_path.time./12.5)./12.5;      % y_0 = 3000.
        ddy = -m*sin(desired_path.time./12.5)./12.5^2;  % dy_0 = m/12.5.
        beta = -atan2(dx,dy);
        k = 0;
        alpha(1,1) = -atan2(1/25,1/12.5) + pi/2;        % \theta_c(0) = -atan2(1/25,1/12.5) + pi/2 = 1.1071.
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) > -pi && beta(i-1,1) < 0
                k = k + 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) < pi && beta(i-1,1) > 0
                k = k - 1;
            end
            alpha(i,1) = -k*2*pi + beta(i,1) + pi/2;
        end
        da(1,1) = 0;
        for i = 2:length(alpha)
            da(i,1) = (alpha(i,1) - alpha(i-1,1))/Ts;
        end
        dda(1,1) = 0;
        for i = 2:length(alpha)
            dda(i,1) = (da(i,1) - da(i-1,1))/Ts;
        end
        desired_path.signals.values=[dx dy da alpha ddx ddy dda];
    case 14
        % This trayectory is the same than Mingyue's paper in Nonlinear dynamics journal.
        % Omnidirectional three-wheeled robot:
        desired_path.time=[0:Ts:260]';                  % Stop time: 160 secs.
        m = 800;
        dx = m*cos(desired_path.time./16)./16;          % x_0 = 2500.
        ddx = -m*sin(desired_path.time./16)./16^2;      % dx_0 = m/16;
        dy = m*cos(desired_path.time./8)./8;            % y_0 = 3000.
        ddy = -m*sin(desired_path.time./8)./8^2;        % dy_0 = m/8;
        beta = -atan2(dx,dy);
        k = 0;
        alpha(1,1) = atan2(1/16,1/8);                   % \theta_c(0) = atan2(1/16,1/8) = 0.4636.
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) > -pi && beta(i-1,1) < 0
                k = k + 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) < pi && beta(i-1,1) > 0
                k = k - 1;
            end
            alpha(i,1) = -k*2*pi + beta(i,1);
        end
        da(1,1) = 0;
        for i = 2:length(alpha)
            da(i,1) = (alpha(i,1) - alpha(i-1,1))/Ts;
        end
        dda(1,1) = 0;
        for i = 2:length(alpha)
            dda(i,1) = (da(i,1) - da(i-1,1))/Ts;
        end
        desired_path.signals.values=[dx dy da*0 alpha*0 ddx ddy dda*0];
end
end