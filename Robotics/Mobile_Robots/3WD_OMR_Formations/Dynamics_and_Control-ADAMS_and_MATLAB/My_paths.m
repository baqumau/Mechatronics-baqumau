function desired_path = My_paths(n,Ts)
% Different kind of trajectories for multirobot system, based it in the cluster space approach.
switch n
    case 1
        % This trajectory is a circumference with a constant linear
        % velocity of the multirobot system.
        desired_path.time = [0:Ts:500]';                                        %[sec] Time of simulation.
        Vc = 80;                                                                %[mm/s] linear velocity of cluster centriod.
        Thc0 = -pi/4;
        dThc = (Vc/2000)*ones(length(desired_path.time),1);                     % \theta_c = -pi/4 rad.
        da1 = desired_path.time.*0;                                             %a_1(0) = 500.
        da2 = desired_path.time.*0;                                             %a_2(0) = 500.
        dvth = desired_path.time.*0;                                            %\vartheta(0) = acos((a1(0)^2 + a2(0)^2 - a3(0)^2)/(2*a1(0)*a2(0))) = 2.8909 rad.
        dxc = (Vc*1958.3272/2000)*sin(Vc/2000.*desired_path.time - Thc0);       %x_c(0) = 5000 + 2000*sin(\theta_c(0)) - r(0)*sin(\theta_c(0))/3 = 3615.3 mm, with r(0) = sqrt(a_1(0)^2 + a_2(0)^2 + 2*a_1(0)*a_2(0)*cos(\vartheta(0))) = 125.0184.
        dyc = (Vc*1958.3272/2000)*cos(Vc/2000.*desired_path.time - Thc0);       %y_c(0) = 5000 + 2000*cos(\theta_c(0)) - r(0)*cos(\theta_c(0))/3 = 6384.7 mm.
        %------------------------------------------------------------------
        desired_path.signals.values=[dxc dyc dThc da1 da2 dvth];
        % x_1(0) = 5000 + 2000*sin(\theta_c(0)) = 3585.8 mm.
        % y_1(0) = 5000 + 2000*cos(\theta_c(0)) = 6414.2 mm.
        %\theta_1(0) = -pi/4; entonces \yaw_1(0) = \theta_1(0) + \theta_c(0) = -pi/2.
        % x_2(0) = 5000 + 2000*sin(\theta_c(0) - .2507) = 3279.2 mm.
        % y_2(0) = 5000 + 2000*cos(\theta_c(0) - .2507) = 6019.2 mm.
        %\theta_2(0) = acos((2*Rt^2 - a_1(0)^2)/(2*(Rt)^2)) - pi/4 = -0.5347; entonces \yaw_2(0) = \theta_2(0) + \theta_c(0) = -1.3201.
        % x_3(0) = 5000 + 2000*sin(\theta_c(0) + .2507) = 3980.8 mm.
        % y_3(0) = 5000 + 2000*cos(\theta_c(0) + .2507) = 6720.8 mm.
        %\theta_3(0) = -acos((2*Rt^2 - a_1(0)^2)/(2*(Rt)^2)) - pi/4 = -1.0361; entonces \yaw_3(0) = \theta_3(0) + \theta_c(0) = -1.8215.
    case 2
        % This trajectory is another circumference with a constant linear
        % velocity of the multirobot system (Equilateral triangle).
        desired_path.time=[0:Ts:100]';                                          %[sec] Time of simulation.
        Rt = 2000;                                                              %[mm] Radio of the desired circumference.
        Vc = 80;                                                                %[mm/s] linear velocity of the cluster frame.
        Thc0 = 0;                                                               %[rad] initial condition of cluster orientation \theta_c(0) = -pi/4.
        dThc = (Vc/Rt)*ones(length(desired_path.time),1);
        da1 = desired_path.time.*0;                                             %a_1(0) = 2000*sin(4*pi/6)/sin(pi/6).
        da2 = desired_path.time.*0;                                             %a_2(0) = a_1(0).
        dvth = desired_path.time.*0;                                            %\vartheta(0) = pi/3 rad.
        dxc = desired_path.time.*0;                                             %x_c(0) = 5000 mm.
        dyc = desired_path.time.*0;                                             %y_c(0) = 6500 mm.
        %------------------------------------------------------------------
        desired_path.signals.values=[dxc dyc dThc da1 da2 dvth];
        % x_1(0) = 5000 mm.
        % y_1(0) = 7000 mm.
        %\theta_1(0) = -pi/2; entonces \yaw_1(0) = \theta_1(0) + \theta_c(0) = -pi/2.
        % x_2(0) = 5000 - 2000*cos(pi/6) mm.
        % y_2(0) = 5000 - 2000*sin(pi/6) mm.
        %\theta_2(0) = -pi/2 + 2*pi/3 rad; entonces \yaw_2(0) = \theta_2(0) + \theta_c(0) = -pi/2 + 2*pi/3 rad.
        % x_3(0) = 5000 + 2000*cos(pi/6) mm.
        % y_3(0) = 5000 - 2000*sin(pi/6) mm.
        %\theta_3(0) = -pi/2 - 2*pi/3 rad; entonces \yaw_3(0) = \theta_3(0) + \theta_c(0) = -pi/2 - 2*pi/3 rad.
    case 3
        % This trayectory is for three vehicles and it is the same than Mingyue's
        % paper in Nonlinear dynamics journal.
        desired_path.time=[0:Ts:1000]';                                         % Stop time: 200 secs.
        m = 2000;
        dxc = m*cos(desired_path.time./25)./25;                                 % x_c(0) = 5000.
        dyc = m*cos(desired_path.time./12.5)./12.5;                             % y_c(0) = 6500.
        beta = atan2(dxc,dyc);
        k = 0;
        thc(1,1) = atan2(1/25,1/12.5);
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) >= -pi && beta(i-1,1) < -pi/2
                k = k - 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) <= pi && beta(i-1,1) > pi/2
                k = k + 1;
            end
            thc(i,1) = k*2*pi + beta(i,1);
        end
        dthc(1,1) = 0;                                                          % \theta_c(0) = atan2(1/25,1/12.5) = .4636 rad.
        for i = 2:length(thc)
            dthc(i,1) = (thc(i,1) - thc(i-1,1))/Ts;
        end
        da1 = desired_path.time.*0;                                             % a_1(0) = 500 mm.
        da2 = desired_path.time.*0;                                             % a_2(0) = 500 mm.
        dvth_1 = desired_path.time.*0;                                          % \vartheta_1(0) = 60 degrees (pi/3 rad).
        desired_path.signals.values=[dxc dyc dthc da1 da2 dvth_1];              % l(0) = sqrt(a_1(0)^2 + a_2(0)^2 + 2*a_1(0)*a_2(0)*cos(\vartheta_1(0))) = 866.0254 mm.
        % x_1(0) = x_c(0) + (1/3)*l(0)*sin(\theta_c(0)) = 5.1291e+03 mm.
        % y_1(0) = y_c(0) + (1/3)*l(0)*cos(\theta_c(0)) = 6.7582e+03 mm.
        % \theta_1(0) = -\theta_c(0) = -.4636 rad.
        % x_2(0) = x_1(0) - a_1(0)*sin(\vartheta_1(0)/2 + \theta_c(0)) = 4.7118e+03 mm.
        % y_2(0) = y_1(0) - a_1(0)*cos(\vartheta_1(0)/2 + \theta_c(0)) = 6.3409e+03 mm.
        % \theta_2(0) = -\theta_c(0) = -.4636 rad.
        % x_3(0) = x_1(0) + a_2(0)*sin(\vartheta_1(0)/2 - \theta_c(0)) = 5.1591e+03 mm.
        % y_3(0) = y_1(0) - a_1(0)*cos(\vartheta_1(0)/2 + \theta_c(0)) = 6.2591e+03 mm.
        % \theta_3(0) = -\theta_c(0) = -.4636 rad.
    case 4
        % This trajectory is a small circumference trajectory to be tracked by the 
        % overall 3-robot system along the road at the simulation time.
        desired_path.time=[0:Ts:500]';
        V = 100;                                                                %[mm/s] Constant linear velocity.
        dthc = ones(length(desired_path.time),1)*(V/2000);                      % thc_0 = -pi/4 rad.
        thc(1,1) = -pi/4;
        for i=2:length(dthc)
            thc(i,1) = Ts*V/2000 + thc(i-1,1);
        end
        dxc = V.*sin(thc);                                                      % xc_0 = 5000 - 2000*sin(pi/4).
        dyc = V.*cos(thc);                                                      % yc_0 = 5000 - 2000*cos(pi/4).
        da1 = desired_path.time.*0;                                             % a_1(0) = 500 mm.
        da2 = desired_path.time.*0;                                             % a_2(0) = 500 mm.
        dvth_1 = desired_path.time.*0;                                          % \vartheta_1(0) = 60 degrees (pi/3 rad).
        desired_path.signals.values=[dxc dyc dthc da1 da2 dvth_1];
        % l_0 = sqrt(a1_0^2 + a2_0^2 + 2*a1_0*a2_0*cos(vth1_0));
        % x1_0 = xc_0 + l_0*sin(thc_0)/3;
        % y1_0 = yc_0 + l_0*cos(thc_0)/3;
        % x2_0 = x1_0 - a1_0*sin(vth1_0/2 + thc_0);
        % y2_0 = y1_0 - a1_0*cos(vth1_0/2 + thc_0);
        % x3_0 = x1_0 + a2_0*sin(vth1_0/2 - thc_0);
        % y3_0 = y1_0 - a2_0*cos(vth1_0/2 - thc_0);
        % th1_0 = pi/4; th2_0 = pi/4; th3_0 = pi/4;
    case 5
        % This trajectory is a small circumference trajectory to be tracked by the 
        % overall 3-robot (3-robot cluster) system along the road at the simulation time.
        % Acceleration profiles are needed in the simulation.
        desired_path.time=[0:Ts:500]';
        V = 100;                                                                %[mm/s] Constant linear velocity.
        R = 2000;                                                               %[mm] radius of circumference.
        dthc = ones(length(desired_path.time),1)*(V/R);                         % th_c(0) = -pi/4 rad.
        ddthc = zeros(length(desired_path.time),1);                             % dth_c(0) = V/2000 = 1/20 rad/s.
        thc(1,1) = -pi/4;
        for i=2:length(dthc)
            thc(i,1) = Ts*V/R + thc(i-1,1);
        end
        dxc = V*sin(thc);                                                       % x_c(0) = 5000 - 2000*sin(pi/4) mm.
        ddxc = V*cos(thc).*dthc;                                                % dx_c(0) = V*sin(thc_0) = -70.7107 mm/s.
        dyc = V*cos(thc);                                                       % y_c(0) = 5000 - 2000*cos(pi/4) mm.
        ddyc = -V*sin(thc).*dthc;                                               % dy_c(0) = V*cos(thc_0) = 70.7107 mm/s.
        da1 = desired_path.time.*0;                                             % a_1(0) = 1000 mm.
        dda1 = desired_path.time.*0;                                            % da1_0 = 0.
        da2 = desired_path.time.*0;                                             % a_2(0) = 1000 mm.
        dda2 = desired_path.time.*0;                                            % da2_0 = 0.
        dvth_1 = desired_path.time.*0;                                          % \vartheta_1(0) = 60 degrees (pi/3 rad).
        ddvth_1 = desired_path.time.*0;                                         % d{\vartheta_1}(0) = 0 rad/s;
        dph1 = dthc;                                                            % ph1(0) = th_c(0) = -pi/4 rad.
        ddph1 = ddthc;                                                          % dph1(0) = dth_c(0) = 1/20 rad/s.
        dph2 = dthc;                                                            % ph2(0) = th_c(0) = -pi/4 rad.
        ddph2 = ddthc;                                                          % dph2(0) = dth_c(0) = 1/20 rad/s.
        dph3 = dthc;                                                            % ph3(0) = th_c(0) = -pi/4 rad.
        ddph3 = ddthc;                                                          % dph3(0) = dth_c(0) = 1/20 rad/s.
        desired_path.signals.values=[dxc dyc dthc da1 da2 dvth_1 dph1 dph2 dph3 ddxc ddyc ddthc dda1 dda2 ddvth_1 ddph1 ddph2 ddph3];
        % l_0 = sqrt(a1_0^2 + a2_0^2 + 2*a1_0*a2_0*cos(vth1_0));
        % x1_0 = xc_0 + l_0*sin(thc_0)/3;
        % y1_0 = yc_0 + l_0*cos(thc_0)/3;
        % x2_0 = x1_0 - a1_0*sin(vth1_0/2 + thc_0);
        % y2_0 = y1_0 - a1_0*cos(vth1_0/2 + thc_0);
        % x3_0 = x1_0 + a2_0*sin(vth1_0/2 - thc_0);
        % y3_0 = y1_0 - a2_0*cos(vth1_0/2 - thc_0);
        % th1_0 = ph1_0 - thc_0; th2_0 = ph2_0 - thc_0; th3_0 = ph3_0 - thc_0;
    case 11
        % This trayectory is for five vehicles and it is the same than Mingyue's
        % paper in Nonlinear dynamics journal.
        desired_path.time=[0:Ts:200]';                                          % Stop time: 200 secs.
        m = 2000;
        dxc = m*cos(desired_path.time./25)./25;                                 % x_c(0) = 5000.
        dyc = m*cos(desired_path.time./12.5)./12.5;                             % y_c(0) = 6500.
        beta = atan2(dxc,dyc);
        k = 0;
        thc(1,1) = atan2(1/25,1/12.5);
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) >= -pi && beta(i-1,1) < -pi/2
                k = k - 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) <= pi && beta(i-1,1) > pi/2
                k = k + 1;
            end
            thc(i,1) = k*2*pi + beta(i,1);
        end
        dthc(1,1) = 0;                                                          % \theta_c(0) = atan2(1/25,1/12.5) = 0.4636.
        for i = 2:length(thc)
            dthc(i,1) = (thc(i,1) - thc(i-1,1))/Ts;
        end
        da1 = desired_path.time.*0;                                             % a_1(0) = 600 mm.
        da2 = desired_path.time.*0;                                             % a_2(0) = 600 mm.
        da3 = desired_path.time.*0;                                             % a_3(0) = 600 mm.
        da4 = desired_path.time.*0;                                             % a_4(0) = 600 mm.
        dvth_1 = desired_path.time.*0;                                          % \vartheta_1(0) = 108 degrees.
        dvth_2 = desired_path.time.*0;                                          % \vartheta_2(0) = 108 degrees.
        dvth_3 = desired_path.time.*0;                                          % \vartheta_3(0) = 108 degrees.
        desired_path.signals.values=[dxc dyc dthc da1 da2 da3 da4 dvth_1 dvth_2 dvth_3];
    case 21
        % This trayectory is a four petals flower for seven vehicles.
        desired_path.time=[0:Ts:320]';                                          % Stop time: 130 secs.
        m = 3000;                                                               % Amplitude.
        o = 1.1015;                                                             % Offset.
        dxc = m*o*(cos(desired_path.time./25).*sin(desired_path.time.*(3/50)).*(1/25) + sin(desired_path.time./25).*cos(desired_path.time.*(3/50)).*(3/50)); % x_c(0) = 5000.
        dyc = m*o*(cos(desired_path.time./25).*cos(desired_path.time.*(3/50)).*(1/25) - sin(desired_path.time./25).*sin(desired_path.time.*(3/50)).*(3/50)); % y_c(0) = 5019.
        beta = atan2(dxc,dyc);
        k = 0;
        thc(1,1) = 0;
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) >= -pi && beta(i-1,1) < -pi/2
                k = k - 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) <= pi && beta(i-1,1) > pi/2
                k = k + 1;
            end
            thc(i,1) = k*2*pi + beta(i,1);
        end
        dthc(1,1) = 0;                                                          % \theta_c(0) = atan2(1/16,1/8).
        for i = 2:length(thc)
            dthc(i,1) = (thc(i,1) - thc(i-1,1))/Ts;
        end
        da1 = desired_path.time.*0;                                             % a_1(0) = 301.3768 mm.
        da2 = desired_path.time.*0;                                             % a_2(0) = 301.3768 mm.
        da3 = desired_path.time.*0;                                             % a_3(0) = 301.3768 mm.
        da4 = desired_path.time.*0;                                             % a_4(0) = 301.3768 mm.
        da5 = desired_path.time.*0;                                             % a_5(0) = 301.3768 mm.
        da6 = desired_path.time.*0;                                             % a_6(0) = 301.3768 mm.
        dvth_1 = desired_path.time.*0;                                          % \vartheta_1(0) = 60 degrees.
        dvth_2 = desired_path.time.*0;                                          % \vartheta_2(0) = 150 degrees.
        dvth_3 = desired_path.time.*0;                                          % \vartheta_3(0) = 150 degrees.
        dvth_4 = desired_path.time.*0;                                          % \vartheta_4(0) = 60 degrees.
        dvth_5 = desired_path.time.*0;                                          % \vartheta_5(0) = 60 degrees.
        desired_path.signals.values=[dxc dyc dthc da1 da2 da3 da4 da5 da6 dvth_1 dvth_2 dvth_3 dvth_4 dvth_5];
    case 22
        % This trayectory is the same than Mingyue's, but for seven vehicles.
        % paper in Nonlinear dynamics journal.
        desired_path.time=[0:Ts:640]';                                          % Stop time: 200 secs.
        m = 2000;
        dxc = -(m*sin(desired_path.time./30)./30).*sign(sin(desired_path.time./60));    % x_c(0) = 5000.
        dyc = (m*cos(desired_path.time./30)./30);                                       % y_c(0) = 5019.
        beta = atan2(dxc,dyc);
        k = 0;
        thc(1,1) = 0;
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) >= -pi && beta(i-1,1) < -pi/2
                k = k - 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) <= pi && beta(i-1,1) > pi/2
                k = k + 1;
            end
            thc(i,1) = k*2*pi + beta(i,1);
        end
        dthc(1,1) = 0;                                                          % \theta_c(0) = atan2(1/16,1/8).
        for i = 2:length(thc)
            dthc(i,1) = (thc(i,1) - thc(i-1,1))/Ts;
        end
        da1 = desired_path.time.*0;                                             % a_1(0) = 301.3768 mm.
        da2 = desired_path.time.*0;                                             % a_2(0) = 301.3768 mm.
        da3 = desired_path.time.*0;                                             % a_3(0) = 301.3768 mm.
        da4 = desired_path.time.*0;                                             % a_4(0) = 301.3768 mm.
        da5 = desired_path.time.*0;                                             % a_5(0) = 301.3768 mm.
        da6 = desired_path.time.*0;                                             % a_6(0) = 301.3768 mm.
        dvth_1 = desired_path.time.*0;                                          % \vartheta_1(0) = 60 degrees.
        dvth_2 = desired_path.time.*0;                                          % \vartheta_2(0) = 150 degrees.
        dvth_3 = desired_path.time.*0;                                          % \vartheta_3(0) = 150 degrees.
        dvth_4 = desired_path.time.*0;                                          % \vartheta_4(0) = 60 degrees.
        dvth_5 = desired_path.time.*0;                                          % \vartheta_5(0) = 60 degrees.
        desired_path.signals.values=[dxc dyc dthc da1 da2 da3 da4 da5 da6 dvth_1 dvth_2 dvth_3 dvth_4 dvth_5];
    case 31
        % This trajectory is a circumference with a constant linear
        % velocity for the multirobot system (two-robot cluster).
        desired_path.time=[0:Ts:3000]';                                         %[sec] Time of simulation.
        Vc = 80;                                                                %[mm/s] linear velocity of cluster centriod.
        Thc0 = pi/4;
        dThc = (Vc/2000)*ones(length(desired_path.time),1);                     %\theta_c(0) = pi/4 rad.
        dd = desired_path.time.*0;                                              %d(0) = 500.
        dxc = -Vc*cos(Vc/2000.*desired_path.time + Thc0);                       %x_c(0) = 5000 - 2000*sin(\theta_c(0)) = 3.5858e+03 mm.
        dyc = Vc*sin(Vc/2000.*desired_path.time + Thc0);                        %y_c(0) = 5000 - 2000*cos(\theta_c(0)) = 3.5858e+03 mm.
        %------------------------------------------------------------------
        desired_path.signals.values=[dxc dyc dThc dd];
        % x_1(0) = 5000 - 1500*sin(\theta_c(0)) = 3.9393e+03 mm.
        % y_1(0) = 5000 - 1500*cos(\theta_c(0)) = 3.9393e+03 mm.
        % x_2(0) = 5000 - 2500*sin(\theta_c(0)) = 3.2322e+03 mm.
        % y_2(0) = 5000 - 2500*cos(\theta_c(0)) = 3.2322e+03 mm.
        % \theta_1(0) = \theta_2(0) = \theta_c(0) = pi/4
    case 32
        % This trayectory is for two vehicles (two-robot cluster) and it is the same than Mingyue's
        % paper in Nonlinear dynamics journal.
        desired_path.time = [0:Ts:1000]';                                       % Stop time: 500 secs.
        m = 2000;
        dxc = m*cos(desired_path.time./25)./25;                                 % x_c(0) = 5000.
        dyc = m*cos(desired_path.time./12.5)./12.5;                             % y_c(0) = 5000.
        beta = atan2(dxc,dyc);
        k = 0;
        thc(1,1) = atan2(1/25,1/12.5)+pi/2;
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) >= -pi && beta(i-1,1) < -pi/2
                k = k - 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) <= pi && beta(i-1,1) > pi/2
                k = k + 1;
            end
            thc(i,1) = k*2*pi + beta(i,1) + pi/2;
        end
        dthc(1,1) = 0;                                                          % \theta_c(0) = atan2(1/25,1/12.5)+pi/2.
        for i = 2:length(thc)
            dthc(i,1) = (thc(i,1) - thc(i-1,1))/Ts;
        end
        dd = desired_path.time.*0;                                              % d(0) = 200 mm.
        desired_path.signals.values = [dxc dyc dthc dd];
        % x_1(0) = x_c(0) + d(0)*sin(\theta_c(0)) = 5.1789e+03; y_1(0) = x_c(0) + d(0)*cos(\theta_c(0)) = 4.9106e+03; \theta_1(0) = -atan2(1/25,1/12.5) = -0.4636;
        % x_2(0) = x_c(0) - d(0)*sin(\theta_c(0)) = 4.8211e+03; y_2(0) = x_c(0) - d(0)*cos(\theta_c(0)) = 5.0894e+03; \theta_2(0) = -atan2(1/25,1/12.5) = -0.4636;
    case 33
        % This trajectory is a circumference with a constant linear
        % velocity for the multirobot system (two-robot cluster).
        desired_path.time = [0:Ts:5000]';                                       %[sec] Time of simulation.
        Vc = 80/2;                                                              %[mm/s] linear velocity of cluster centriod.
        Thc0 = pi/4;
        dThc = (Vc/2000)*ones(length(desired_path.time),1);                     %\theta_c(0) = pi/4 rad.
        ddThc = desired_path.time.*0;
        dd = desired_path.time.*0;                                              %d(0) = 200.
        ddd = desired_path.time.*0;
        dxc = -Vc*cos(Vc/2000.*desired_path.time + Thc0);                       %x_c(0) = 10000 - 2000*sin(\theta_c(0)) = 8.5858e+03 mm.
        ddxc = (Vc^2/2000)*sin(Vc/2000.*desired_path.time + Thc0);
        dyc = Vc*sin(Vc/2000.*desired_path.time + Thc0);                        %y_c(0) = 10000 - 2000*cos(\theta_c(0)) = 8.5858e+03 mm.
        ddyc = (Vc^2/2000)*cos(Vc/2000.*desired_path.time + Thc0);
        ddPh1 = desired_path.time.*0;
        ddPh2 = desired_path.time.*0;
        %------------------------------------------------------------------
        desired_path.signals.values=[dxc dyc dThc dd ddxc ddyc ddThc ddd ddPh1 ddPh2];
        % x_1(0) = 10000 - 1800*sin(\theta_c(0)) = 8.7272e+03 mm.
        % y_1(0) = 10000 - 1800*cos(\theta_c(0)) = 8.7272e+03 mm.
        % x_2(0) = 10000 - 2200*sin(\theta_c(0)) = 8.4444e+03 mm.
        % y_2(0) = 10000 - 2200*cos(\theta_c(0)) = 8.4444e+03 mm.
        % \theta_1(0) = \theta_2(0) = \theta_c(0) = pi/4.
    case 34
        % This trayectory is for two vehicles (two-robot cluster) and it is the same than Mingyue's
        % paper in Nonlinear dynamics journal.
        desired_path.time = [0:Ts:1000]';                                       % Stop time: 1000 secs.
        m = 4000;
        dxc = m*cos(desired_path.time./50)./50;                                 % x_c(0) = 10000 mm.
        ddxc = -m*sin(desired_path.time./50)./50^2;                             % dx_c(0) = m/50 mm/s.
        dyc = m*cos(desired_path.time./25)./25;                                 % y_c(0) = 10000 mm.
        ddyc = -m*sin(desired_path.time./25)./25^2;                             % dy_c(0) = m/25 mm/s.
        beta = atan2(dxc,dyc);
        k = 0;
        thc(1,1) = atan2(1/25,1/12.5)+pi/2;
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) >= -pi && beta(i-1,1) < -pi/2
                k = k - 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) <= pi && beta(i-1,1) > pi/2
                k = k + 1;
            end
            thc(i,1) = k*2*pi + beta(i,1) + pi/2;
        end                                                                     % d\theta_c(0) = (dy_c(0)*ddx_c(0) - dx_c(0)*ddy_c(0))/(dx_c(0)^2 + dy_c(0)^2) = 0.
        dthc(1,1) = 0;                                                          % \theta_c(0) = atan2(1/25,1/12.5)+pi/2.
        for i = 2:length(thc)
            dthc(i,1) = (thc(i,1) - thc(i-1,1))/Ts;
        end
        ddthc(1,1) = 0;
        for i = 2:length(thc)
            ddthc(i,1) = (dthc(i,1) - dthc(i-1,1))/Ts;
        end
        dd = desired_path.time.*0;                                              % d(0) = 200 mm.
        ddd = desired_path.time.*0;
        ddph1 = desired_path.time.*0;
        ddph2 = desired_path.time.*0;
        desired_path.signals.values = [dxc dyc dthc dd ddxc ddyc ddthc ddd ddph1 ddph2];
        % x_1(0) = x_c(0) + d(0)*sin(\theta_c(0)) = 1.0179e+04; y_1(0) = x_c(0) + d(0)*cos(\theta_c(0)) = 9.9106e+03; \theta_1(0) = -atan2(1/25,1/12.5) = -0.4636;
        % x_2(0) = x_c(0) - d(0)*sin(\theta_c(0)) = 9.8211e+03; y_2(0) = x_c(0) - d(0)*cos(\theta_c(0)) = 1.0089e+04; \theta_2(0) = -atan2(1/25,1/12.5) = -0.4636;
    case 35
        % This trajectory is a circumference with a constant linear
        % velocity for the multirobot system (two-robot cluster).
        desired_path.time = [0:Ts:5000]';                                       %[sec] Time of simulation.
        Vc = 80/1.6;                                                            %[mm/s] linear velocity of cluster centriod.
        Thc0 = pi/4;
        dThc = (Vc/4000)*ones(length(desired_path.time),1);                     %\theta_c(0) = pi/4 rad.
        ddThc = desired_path.time.*0;                                           %d\theta_c(0) = Vc/4000.
        dd = desired_path.time.*0;                                              %d(0) = 200.
        ddd = desired_path.time.*0;                                             %dd(0) = 0.
        dxc = -Vc*cos(Vc/4000.*desired_path.time + Thc0);                       %x_c(0) = 10000 - 4000*sin(\theta_c(0)) = 7.1716e+03 mm.
        ddxc = (Vc^2/4000)*sin(Vc/4000.*desired_path.time + Thc0);              %dx_c(0) = -Vc*cos(Thc0) = -35.3553.
        dyc = Vc*sin(Vc/4000.*desired_path.time + Thc0);                        %y_c(0) = 10000 - 4000*cos(\theta_c(0)) = 7.1716e+03 mm.
        ddyc = (Vc^2/4000)*cos(Vc/4000.*desired_path.time + Thc0);              %dyc(0) = Vc*sin(Thc0) = 35.3553.
        ddPh1 = desired_path.time.*0;
        ddPh2 = desired_path.time.*0;
        %------------------------------------------------------------------
        desired_path.signals.values=[dxc dyc dThc dd ddxc ddyc ddThc ddd ddPh1 ddPh2];
        % x_1(0) = 10000 - 3800*sin(\theta_c(0)) = 7.3130e+03 mm.
        % y_1(0) = 10000 - 3800*cos(\theta_c(0)) = 7.3130e+03 mm.
        % x_2(0) = 10000 - 4200*sin(\theta_c(0)) = 7.0302e+03 mm.
        % y_2(0) = 10000 - 4200*cos(\theta_c(0)) = 7.0302e+03 mm.
        % \theta_1(0) = \theta_2(0) = \theta_c(0) = pi/4.
    case 36
        % This trayectory is the same than Mingyue's paper in Nonlinear dynamics journal.
        % Omnidirectional three-wheeled robot (two vehicles):
        desired_path.time = [0:Ts:1500]';                                       % Stop time: 260 secs.
        m = 2000;
        dxc = m*cos(desired_path.time./25)./25;                                 % xc_0 = 3000.
        ddxc = -m*sin(desired_path.time./25)./25^2;                             % dxc_0 = m/25.
        dyc = m*cos(desired_path.time./12.5)./12.5;                             % yc_0 = 3000.
        ddyc = -m*sin(desired_path.time./12.5)./12.5^2;                         % dyc_0 = m/12.5.
        beta = atan2(dxc,dyc);
        k = 0;
        thc(1,1) = atan2(1/25,1/12.5)+pi/2;
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) >= -pi && beta(i-1,1) < -pi/2
                k = k - 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) <= pi && beta(i-1,1) > pi/2
                k = k + 1;
            end
            thc(i,1) = k*2*pi + beta(i,1) + pi/2;
        end                                                                     % d\theta_c(0) = (dy_c(0)*ddx_c(0) - dx_c(0)*ddy_c(0))/(dx_c(0)^2 + dy_c(0)^2) = 0.
        dthc(1,1) = 0;                                                          % \theta_c(0) = atan2(1/25,1/12.5) + pi/2.
        for i = 2:length(thc)
            dthc(i,1) = (thc(i,1) - thc(i-1,1))/Ts;
        end
        ddthc(1,1) = 0;
        for i = 2:length(thc)
            ddthc(i,1) = (dthc(i,1) - dthc(i-1,1))/Ts;
        end
        dd = desired_path.time.*0;                                              % d(0) = 200 mm.
        ddd = desired_path.time.*0;
        ddph1 = desired_path.time.*0;
        ddph2 = desired_path.time.*0;
        desired_path.signals.values = [dxc dyc dthc dd ddxc ddyc ddthc ddd ddph1 ddph2];
        % x_1(0) = x_c(0) + d(0)*sin(\theta_c(0)) = 3.1789e+03; y_1(0) = x_c(0) + d(0)*cos(\theta_c(0)) = 2.9106e+03; \theta_1(0) = -atan2(1/25,1/12.5) = -0.4636;
        % x_2(0) = x_c(0) - d(0)*sin(\theta_c(0)) = 2.8211e+03; y_2(0) = x_c(0) - d(0)*cos(\theta_c(0)) = 3.0894e+03; \theta_2(0) = -atan2(1/25,1/12.5) = -0.4636;
    case 37
        % This trayectory is the same than Mingyue's paper in Nonlinear dynamics journal.
        % Omnidirectional three-wheeled robot (two vehicles):
        desired_path.time = [0:Ts:1500]';                                       % Stop time: 260 secs.
        m = 2000;
        dxc = m*cos(desired_path.time./25)./25;                                 % xc_0 = 13000.
        ddxc = -m*sin(desired_path.time./25)./25^2;                             % dxc_0 = m/25.
        dyc = m*cos(desired_path.time./12.5)./12.5;                             % yc_0 = 13000.
        ddyc = -m*sin(desired_path.time./12.5)./12.5^2;                         % dyc_0 = m/12.5.
        beta = atan2(dxc,dyc);
        k = 0;
        thc(1,1) = atan2(1/25,1/12.5)+pi/2;
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) >= -pi && beta(i-1,1) < -pi/2
                k = k - 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) <= pi && beta(i-1,1) > pi/2
                k = k + 1;
            end
            thc(i,1) = k*2*pi + beta(i,1) + pi/2;
        end                                                                     % d\theta_c(0) = (dy_c(0)*ddx_c(0) - dx_c(0)*ddy_c(0))/(dx_c(0)^2 + dy_c(0)^2) = 0.
        dthc(1,1) = 0;                                                          % \theta_c(0) = atan2(1/25,1/12.5) + pi/2.
        for i = 2:length(thc)
            dthc(i,1) = (thc(i,1) - thc(i-1,1))/Ts;
        end
        ddthc(1,1) = 0;
        for i = 2:length(thc)
            ddthc(i,1) = (dthc(i,1) - dthc(i-1,1))/Ts;
        end
        dd = desired_path.time.*0;                                              % d(0) = 200 mm.
        ddd = desired_path.time.*0;
        ddph1 = desired_path.time.*0;
        ddph2 = desired_path.time.*0;
        desired_path.signals.values = [dxc dyc dthc dd ddxc ddyc ddthc ddd ddph1 ddph2];
        % x_1(0) = x_c(0) + d(0)*sin(\theta_c(0)) = 13.1789e+03; y_1(0) = x_c(0) + d(0)*cos(\theta_c(0)) = 12.9106e+03; \theta_1(0) = -atan2(1/25,1/12.5) = -0.4636;
        % x_2(0) = x_c(0) - d(0)*sin(\theta_c(0)) = 12.8211e+03; y_2(0) = x_c(0) - d(0)*cos(\theta_c(0)) = 13.0894e+03; \theta_2(0) = -atan2(1/25,1/12.5) = -0.4636;
    case 38
        % This trayectory is a set of continuous statical references where two vehicles
        % are remained in a fixed position.
        % Omnidirectional three-wheeled robot (two vehicles):
        desired_path.time = (0:Ts:150)';                                        % Stop time: 150 secs.
        dxc = desired_path.time.*0;                                             % xc_0 = 10000.
        ddxc = desired_path.time.*0;                                            % dxc_0 = 0.
        dyc = desired_path.time.*0;                                             % yc_0 = 10000.
        ddyc = desired_path.time.*0;                                            % dyc_0 = 0.
        dthc = desired_path.time.*0;                                            % thc_0 = pi/2.
        ddthc = desired_path.time.*0;                                           % dthc_0 = 0.
        dd = desired_path.time.*0;                                              % d(0) = 2000 mm.
        ddd = desired_path.time.*0;                                             % dd(0) = 0.
        ddph1 = desired_path.time.*0;                                           % dph1(0) = .25 rad/s.
        ddph2 = desired_path.time.*0;                                           % dph2(0) = -.25 rad/s.
        desired_path.signals.values = [dxc dyc dthc dd ddxc ddyc ddthc ddd ddph1 ddph2];
    case 41
        % This is a simple trajectory for a one mobile robot, which will be
        % used for the leader-follower formation with time-gap separation.
        % It can be also used in the section of Single Mobile Robot.
        desired_path.time=[0:Ts:500]';
        dx = 2500*(-sin((pi/30).*desired_path.time)*(pi/30).*sin((pi/60).*desired_path.time) + cos((pi/30).*desired_path.time).*cos((pi/60).*desired_path.time)*(pi/60));   % x(0) = 5000 mm;
        dy = -2000*(-sin((pi/30).*desired_path.time)*(pi/30).*cos((pi/60).*desired_path.time) - cos((pi/30).*desired_path.time).*sin((pi/60).*desired_path.time)*(pi/60));  % y(0) = 4000 mm;
        beta = -atan2(dx,dy);
        k = 0;
        th(1,1) = beta(1,1);                                                                                                                                                % th(0) = 0 rad;
        for i = 2:length(beta)
            if beta(i,1) > 0 && beta(i-1,1) >= -pi && beta(i-1,1) < -pi/2
                k = k - 1;
            end
            if beta(i,1) < 0 && beta(i-1,1) <= pi && beta(i-1,1) > pi/2
                k = k + 1;
            end
            th(i,1) = k*2*pi + beta(i,1);
        end
        dth(1,1) = 0;                                                           % \theta_c(0) = atan2(1/25,1/12.5)+pi/2.
        for i = 2:length(th)
            dth(i,1) = (th(i,1) - th(i-1,1))/Ts;
        end
        dtg = 0.*desired_path.time;  % tg(0) = 450;                               
        %------------------------------------------------------------------
        desired_path.signals.values = [dx dy dth th dtg];
    case 42
        % This trajectory is a small circumference trajectory along the
        % road at the simulation time, for the TLF system.
        desired_path.time = [0:Ts:500]';
        da = ones(length(desired_path.time),1)*(-80/1500);                      % alpha_0 = -3*pi/4;
        alpha = da.*desired_path.time - 3*pi/4;
        dx = -80*sin(alpha);   % x_0 = 5000 + 750.
        dy = 80*cos(alpha);    % y_0 = 5000 + 750.
        dtg = 500*sin(desired_path.time.*2*pi/100)*(2*pi/100);                  % tg(0) = 450;
        desired_path.signals.values=[dx dy da alpha dtg];
    case 43
        % This trajectory is for two vehicles (two-robot cluster) and it is
        % a vertical straight line, and each robot make an ondulatory
        % movement.
        desired_path.time = [0:Ts:1000]';
        dxc = desired_path.time*0;                                              % Xc(0) = 10000 mm.
        dyc = ones(length(desired_path.time),1)*10;                             % Yc(0) = 10000 mm.
        dthc = desired_path.time*0;                                             % Thc(0) = pi/2.
        dd = (-100/50).*sin(desired_path.time./50);                             % d(0) = 400 mm.
        desired_path.signals.values=[dxc dyc dthc dd];
    case 44
        % This trajectory is for two vehicles (two-robot cluster) and it is
        % a vertical straight line.
        desired_path.time = [0:Ts:1000]';
        dxc = desired_path.time*0;                                              % Xc(0) = 10000 mm.
        dyc = ones(length(desired_path.time),1)*10;                             % Yc(0) = 10000 mm.
        dthc = desired_path.time*0;                                             % Thc(0) = pi/2.
        dd = (-250/50).*sin(desired_path.time./50)*0;                           % d(0) = 250 mm.
        desired_path.signals.values=[dxc dyc dthc dd];
end
end