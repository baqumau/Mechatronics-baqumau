function [k5,xp5,Map] = solverSokoban(Map,X_0,method)
x1 = X_0(1,:);                                                              % Initial position of Sokoban.
x2 = X_0(2,:);                                                              % Initial position of the box.
x3 = X_0(3,:);                                                              % Initial position of the target.
k5 = 0;                                                                     % Initial iteration for Sokoban.
k6 = 0;                                                                     % Initial iteration for the box.
Tflag = 0;                                                                  % Command flag to indicate that Sokoban knows target's position.
Bflag = 0;                                                                  % Command flag to indicate that Sokoban knows box's position.
Oflag = 0;                                                                  % Command flag to indicate obstacle near in the way.
%--------------------------------------------------------------------------
% Computing search methods:
switch method
    %----------------------------------------------------------------------
    % Breadth First Search:
    case 'BFS'
        x2 = zeros(1,2);                                                    % Box's position is undetermined.
        x3 = zeros(1,2);                                                    % Target's position is undetermined.
        xp5 = x1;
        fr5 = [];
        obst = [];
        Goal = 0;                                                           % When objective is completed.
        while prod(x2) == 0 || prod(x3) == 0 || Goal ~= 0
            [U5,k5] = successorFun(x1,k5);                                  % Execute successor function.
            % Frontier elements:
            V5 = [];                                                        % Empty subset.
            l5 = 0;
            for i = 1:length(U5(:,1))
                if U5(i,1) >= 1 && U5(i,1) <= length(Map) && U5(i,2) >= 1 && U5(i,2) <= length(Map)
                    V5 = [V5;U5(i,:)];                                      % Storing available succesor values.
                    l5 = l5 + 1;                                            % Length of V5 matrix.
                    for j = 1:length(xp5(:,1))
                        %--------------------------------------------------
                        % Removing explored elements into succesors.
                        if V5(l5,1) == xp5(j,1) && V5(l5,2) == xp5(j,2) && length(V5(:,1)) > 1
                            V5 = V5(1:l5-1,:);
                            l5 = l5 - 1;
                        elseif V5(l5,1) == xp5(j,1) && V5(l5,2) == xp5(j,2)
                            V5 = [];
                            l5 = l5 - 1;
                            break
                        end
                    end
                end
            end
            fr5 = [V5;fr5];                                                 % Updating frontier elements.
            fr5 = unique(fr5,'rows','stable');
            % Breadth first exploration:
            q = 1;
            for i = 1:length(fr5(:,1))
                if Map(fr5(i,1),fr5(i,2)) == 0
                    Oflag = 0;                                              % Turning off the Obstacle flag.
                    if Tflag == 1
                        Map(x1(1,1),x1(1,2)) = 8;
                        Tflag = 0;
                    else
                        Map(x1(1,1),x1(1,2)) = 0;
                    end
                    x1 = fr5(i,:);                                          % Available node, Sokoban's position is updated.
                    xp5 = [x1;xp5];                                         % Explored locations.
                    Map(fr5(i,1),fr5(i,2)) = 5;                             % Map is updated.
                    fr5 = fr5(i+1:end,:);                                   % Updating frontier elements.
                    break
                elseif Map(fr5(i,1),fr5(i,2)) == 6
                    x2 = fr5(i,:);                                          % Box's position has been encountered.
                    Bflag = 1;                                              % Box flag.
                    [U6,k6] = successorFun(x2,k6);                          % Succesor movements function for the box.
                    if x3(1,1) > 0 && x3(1,2) > 0
                        %--------------------------------------------------
                        % Heuristic function to carrie the box to the traget.
                        h23 = min(abs(U6(:,1)-ones(length(U6(:,1)*x3(1,1))) + U6(:,2)-ones(length(U6(:,1)*x3(1,2)))));
                    else
                        % Frontier elements:
                        V6 = [];                                            % Empty subset.
                        l6 = 0;
                        for i = 1:length(U6(:,1))
                            if U6(i,1) >= 1 && U6(i,1) <= length(Map) && U6(i,2) >= 1 && U6(i,2) <= length(Map)
                                V6 = [V6;U6(i,:)];                          % Storing available succesor values.
                                l6 = l6 + 1;                                % Length of V6 matrix.
                                for j = 1:length(xp6(:,1))
                                    %--------------------------------------
                                    % Removing explored elements into succesors.
                                    if V6(l6,1) == xp6(j,1) && V6(l6,2) == xp6(j,2) && length(V6(:,1)) > 1
                                        V6 = V6(1:l6-1,:);
                                        l6 = l6 - 1;
                                    elseif V6(l6,1) == xp6(j,1) && V6(l6,2) == xp6(j,2)
                                        V6 = [];
                                        l6 = l6 - 1;
                                        break
                                    end
                                end
                            end
                        end
                        fr6 = [V6;fr6];                                     % Updating frontier elements.
                        fr6 = unique(fr6,'rows','stable');
                    end
                elseif Map(fr5(i,1),fr5(i,2)) == 8
                    x3 = fr5(i,:);                                          % Target's position has been encountered.
                    Tflag = 1;                                              % Target flag.
                    Map(x1(1,1),x1(1,2)) = 0;
                    x1 = fr5(i,:);                                          % Available node, Sokoban's position is updated.
                    xp5 = [x1;xp5];                                         % Explored locations.
                    Map(fr5(i,1),fr5(i,2)) = 5;                             % Map is updated.
                    fr5 = fr5(i+1:end,:);                                   % Updating frontier elements.
                    break
                else
                    obst = [fr5(q,:);obst];                                 % Storing obstacle locations.
                    obst = unique(obst,'rows','stable');
                    fr5 = fr5(q+1:end,:);                                   % Updating frontier elements.
                    Oflag = 1;                                              % Turning On the Obstacle flag.
                    fr5 = [fr5(1,:);xp5(q+1,:);fr5(2:end,:)];               % Adding frontier values.
                    xp5 = [xp5(1,:);xp5(3:end,:)];                          % Erasing two previuos steps.
                end
            end
        end
end
end