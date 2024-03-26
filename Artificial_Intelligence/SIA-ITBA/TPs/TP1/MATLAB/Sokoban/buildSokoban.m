function [completedMap,Target,Sokoban,Box] = buildSokoban(size,obstacles)
% Gnerating the sokoban game. This function creates a size x size matrix
% where sokoban (5), target (8), box (6) and ceil(size/4) obstacles (1) are
% placed.
obst = zeros(length(obstacles),2);
% Empty inicial map:
completedMap = zeros(size,size);
if obstacles > ceil(size)
    error('Many obstacles to place within the map...')
else
    %----------------------------------------------------------------------
    % Ramdom target:
    Target = [ceil(random('unif',1,size)), ceil(random('unif',1,size))];
    %----------------------------------------------------------------------
    % Ramdom sokoban:
    Sokoban = [ceil(random('unif',1,size)), ceil(random('unif',1,size))];
    while (Sokoban(1,1) == Target(1,1)) && (Sokoban(1,2) == Target(1,2))
        Sokoban = [ceil(random('unif',1,size)), ceil(random('unif',1,size))];
    end
    %----------------------------------------------------------------------
    % Ramdom box:
    Box = [ceil(random('unif',2,size-1)), ceil(random('unif',2,size-1))];
    while (Box(1,1) == Target(1,1)) && (Box(1,2) == Target(1,2)) || (Box(1,1) == Sokoban(1,1)) && (Box(1,2) == Sokoban(1,2))
        Box = [ceil(random('unif',2,size-1)), ceil(random('unif',2,size-1))];
    end
end
%--------------------------------------------------------------------------
if obstacles > 0
    % Ramdom obstacles:
    for i = 1:obstacles
        obst(i,:) = [ceil(random('unif',1,size)), ceil(random('unif',1,size))];
        while (obst(i,1) == Target(1,1)) && (obst(i,2) == Target(1,2)) || (obst(i,1) == Sokoban(1,1)) && (obst(i,2) == Sokoban(1,2)) || (obst(i,1) == Box(1,1)) && (obst(i,2) == Box(1,2))
            obst(i,:) = [ceil(random('unif',1,size)), ceil(random('unif',1,size))];
        end
        if obstacles >= 2
            for j = 2:length(obstacles)
                while (obst(j,1) == obst(i,1)) && (obst(j,2) == obst(i,2))
                    obst(j,:) = [ceil(random('unif',1,size)), ceil(random('unif',1,size))];
                end
            end
        end
    end
end
%--------------------------------------------------------------------------
% Completing Sokoban's map:
completedMap(Target(1,1),Target(1,2)) = 8;
completedMap(Sokoban(1,1),Sokoban(1,2)) = 5;
completedMap(Box(1,1),Box(1,2)) = 6;
for i = 1:obstacles
    completedMap(obst(i,1),obst(i,2)) = 1;
end
end