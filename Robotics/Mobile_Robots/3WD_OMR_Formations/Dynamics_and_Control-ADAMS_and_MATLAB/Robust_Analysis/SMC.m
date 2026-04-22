clc, clear
load RobustAnalysisSMC-CS_data.mat
j = [1 3 7 9 10];
e_1.time = e1.time; e_2.time = e2.time; e_3.time = e3.time;
e_4.time = e4.time; e_5.time = e5.time; e_6.time = e6.time;
for i = 1:length(j)
    e_1.signals.values(:,i) = e1.signals.values(:,j(i));
    e_2.signals.values(:,i) = e2.signals.values(:,j(i));
    e_3.signals.values(:,i) = e3.signals.values(:,j(i));
    e_4.signals.values(:,i) = e4.signals.values(:,j(i));
    e_5.signals.values(:,i) = e5.signals.values(:,j(i));
    e_6.signals.values(:,i) = e6.signals.values(:,j(i));
end
for i = 1:length(e1.signals.values(:,1))
    e_1.mean(i,1) = mean(e_1.signals.values(i,:)/1000);
    e_1.variance(i,1) = var(e_1.signals.values(i,:)/1000);
    e_1.sup = e_1.mean + sqrt(e_1.variance)*3;
    e_1.inf = e_1.mean - sqrt(e_1.variance)*3;
    e_2.mean(i,1) = mean(e_2.signals.values(i,:)/1000);
    e_2.variance(i,1) = var(e_2.signals.values(i,:)/1000);
    e_2.sup = e_2.mean + sqrt(e_2.variance)*3;
    e_2.inf = e_2.mean - sqrt(e_2.variance)*3;
    e_3.mean(i,1) = mean(e_3.signals.values(i,:)/1000);
    e_3.variance(i,1) = var(e_3.signals.values(i,:)/1000);
    e_3.sup = e_3.mean + sqrt(e_3.variance)*3;
    e_3.inf = e_3.mean - sqrt(e_3.variance)*3;
    e_4.mean(i,1) = mean(e_4.signals.values(i,:)/1000);
    e_4.variance(i,1) = var(e_4.signals.values(i,:)/1000);
    e_4.sup = e_4.mean + sqrt(e_4.variance)*3;
    e_4.inf = e_4.mean - sqrt(e_4.variance)*3;
    e_5.mean(i,1) = mean(e_5.signals.values(i,:)/1000);
    e_5.variance(i,1) = var(e_5.signals.values(i,:)/1000);
    e_5.sup = e_5.mean + sqrt(e_5.variance)*3;
    e_5.inf = e_5.mean - sqrt(e_5.variance)*3;
    e_6.mean(i,1) = mean(e_6.signals.values(i,:)/1000);
    e_6.variance(i,1) = var(e_6.signals.values(i,:)/1000);
    e_6.sup = e_6.mean + sqrt(e_6.variance)*3;
    e_6.inf = e_6.mean - sqrt(e_6.variance)*3;
end
% Graphs:
figure(1);
h11 = fill([e_1.time; fliplr(e_1.time)], [e_1.sup; fliplr(e_1.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h12 = plot(e_1.time,e_1.mean,'r','LineWidth',1);
h13 = plot(e_1.time,e_1.sup,'Color',[.5 .5 .5]);
h14 = plot(e_1.time,e_1.inf,'Color',[.5 .5 .5]);
legend([h11, h12], {'std(\epsilon_1)', 'mean(\epsilon_1)'});
%------------------
figure(2);
h21 = fill([e_2.time; fliplr(e_2.time)], [e_2.sup; fliplr(e_2.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h22 = plot(e_2.time,e_2.mean,'r');
h23 = plot(e_2.time,e_2.sup,'Color',[.5 .5 .5]);
h24 = plot(e_2.time,e_2.inf,'Color',[.5 .5 .5]);
legend([h21, h22], {'std(\epsilon_2)', 'mean(\epsilon_2)'});
%------------------
figure(3);
h31 = fill([e_3.time; fliplr(e_3.time)], [e_3.sup; fliplr(e_3.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h32 = plot(e_3.time,e_3.mean,'r');
h33 = plot(e_3.time,e_3.sup,'Color',[.5 .5 .5]);
h34 = plot(e_3.time,e_3.inf,'Color',[.5 .5 .5]);
legend([h31, h32], {'std(\epsilon_3)', 'mean(\epsilon_3)'});
%------------------
figure(4);
h41 = fill([e_4.time; fliplr(e_4.time)], [e_4.sup; fliplr(e_4.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h42 = plot(e_4.time,e_4.mean,'r');
h43 = plot(e_4.time,e_4.sup,'Color',[.5 .5 .5]);
h44 = plot(e_4.time,e_4.inf,'Color',[.5 .5 .5]);
legend([h41, h42], {'std(\epsilon_4)', 'mean(\epsilon_4)'});
%------------------
figure(5);
h51 = fill([e_5.time; fliplr(e_5.time)], [e_5.sup; fliplr(e_5.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h52 = plot(e_5.time,e_5.mean,'r');
h53 = plot(e_5.time,e_5.sup,'Color',[.5 .5 .5]);
h54 = plot(e_5.time,e_5.inf,'Color',[.5 .5 .5]);
legend([h51, h52], {'std(\epsilon_5)', 'mean(\epsilon_5)'});
%------------------
figure(6);
h61 = fill([e_6.time; fliplr(e_6.time)], [e_6.sup; fliplr(e_6.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h62 = plot(e_6.time,e_6.mean,'r');
h63 = plot(e_6.time,e_6.sup,'Color',[.5 .5 .5]);
h64 = plot(e_6.time,e_6.inf,'Color',[.5 .5 .5]);
legend([h61, h62], {'std(\epsilon_6)', 'mean(\epsilon_6)'});