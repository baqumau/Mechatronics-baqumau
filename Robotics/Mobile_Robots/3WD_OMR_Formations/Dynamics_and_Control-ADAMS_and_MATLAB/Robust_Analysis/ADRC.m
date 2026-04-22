clc, clear
load RobustAnalysisADRC-RS_data.mat
for i = 1:length(e1.signals.values(:,1))
    e1.mean(i,1) = mean(e1.signals.values(i,:)/1000);
    e1.variance(i,1) = var(e1.signals.values(i,:)/1000);
    e1.sup = e1.mean + sqrt(e1.variance)*3;
    e1.inf = e1.mean - sqrt(e1.variance)*3;
    e2.mean(i,1) = mean(e2.signals.values(i,:)/1000);
    e2.variance(i,1) = var(e2.signals.values(i,:)/1000);
    e2.sup = e2.mean + sqrt(e2.variance)*3;
    e2.inf = e2.mean - sqrt(e2.variance)*3;
    e3.mean(i,1) = mean(e3.signals.values(i,:)/1000);
    e3.variance(i,1) = var(e3.signals.values(i,:)/1000);
    e3.sup = e3.mean + sqrt(e3.variance)*3;
    e3.inf = e3.mean - sqrt(e3.variance)*3;
    e4.mean(i,1) = mean(e4.signals.values(i,:)/1000);
    e4.variance(i,1) = var(e4.signals.values(i,:)/1000);
    e4.sup = e4.mean + sqrt(e4.variance)*3;
    e4.inf = e4.mean - sqrt(e4.variance)*3;
    e5.mean(i,1) = mean(e5.signals.values(i,:)/1000);
    e5.variance(i,1) = var(e5.signals.values(i,:)/1000);
    e5.sup = e5.mean + sqrt(e5.variance)*3;
    e5.inf = e5.mean - sqrt(e5.variance)*3;
    e6.mean(i,1) = mean(e6.signals.values(i,:)/1000);
    e6.variance(i,1) = var(e6.signals.values(i,:)/1000);
    e6.sup = e6.mean + sqrt(e6.variance)*3;
    e6.inf = e6.mean - sqrt(e6.variance)*3;
end
% Graphs:
figure(1);
h11 = fill([e1.time; fliplr(e1.time)], [e1.sup; fliplr(e1.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h12 = plot(e1.time,e1.mean,'r','LineWidth',1);
h13 = plot(e1.time,e1.sup,'Color',[.5 .5 .5]);
h14 = plot(e1.time,e1.inf,'Color',[.5 .5 .5]);
legend([h11, h12], {'std(\epsilon_1)', 'mean(\epsilon_1)'});
%------------------
figure(2);
h21 = fill([e2.time; fliplr(e2.time)], [e2.sup; fliplr(e2.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h22 = plot(e2.time,e2.mean,'r');
h23 = plot(e2.time,e2.sup,'Color',[.5 .5 .5]);
h24 = plot(e2.time,e2.inf,'Color',[.5 .5 .5]);
legend([h21, h22], {'std(\epsilon_2)', 'mean(\epsilon_2)'});
%------------------
figure(3);
h31 = fill([e3.time; fliplr(e3.time)], [e3.sup; fliplr(e3.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h32 = plot(e3.time,e3.mean,'r');
h33 = plot(e3.time,e3.sup,'Color',[.5 .5 .5]);
h34 = plot(e3.time,e3.inf,'Color',[.5 .5 .5]);
legend([h31, h32], {'std(\epsilon_3)', 'mean(\epsilon_3)'});
%------------------
figure(4);
h41 = fill([e4.time; fliplr(e4.time)], [e4.sup; fliplr(e4.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h42 = plot(e4.time,e4.mean,'r');
h43 = plot(e4.time,e4.sup,'Color',[.5 .5 .5]);
h44 = plot(e4.time,e4.inf,'Color',[.5 .5 .5]);
legend([h41, h42], {'std(\epsilon_4)', 'mean(\epsilon_4)'});
%------------------
figure(5);
h51 = fill([e5.time; fliplr(e5.time)], [e5.sup; fliplr(e5.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h52 = plot(e5.time,e5.mean,'r');
h53 = plot(e5.time,e5.sup,'Color',[.5 .5 .5]);
h54 = plot(e5.time,e5.inf,'Color',[.5 .5 .5]);
legend([h51, h52], {'std(\epsilon_5)', 'mean(\epsilon_5)'});
%------------------
figure(6);
h61 = fill([e6.time; fliplr(e6.time)], [e6.sup; fliplr(e6.inf)], [0.8 0.8 1], 'EdgeColor', 'none', 'FaceAlpha', 0.5);
grid, hold on
h62 = plot(e6.time,e6.mean,'r');
h63 = plot(e6.time,e6.sup,'Color',[.5 .5 .5]);
h64 = plot(e6.time,e6.inf,'Color',[.5 .5 .5]);
legend([h61, h62], {'std(\epsilon_6)', 'mean(\epsilon_6)'});