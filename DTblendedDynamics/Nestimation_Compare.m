clear all
clc
%% we plot the state trajectory of the selected agent, for each method
figure(2)
hold on
grid on
load('Nestimation_Proposed_data')
plot(1:intHorizon,X(1,1:intHorizon),'-','color',[255, 0, 0]/255,'linewidth',2)

load('Nestimation_Shames_data')
plot(1:intHorizon,X(1,1:intHorizon),'-.','color',[224, 64, 251]/255,'linewidth',2)

load('Nestimation_Varagnolo_data')
plot(1:intHorizon,X(1,1:intHorizon),'-.','color',[100, 255, 218]/255,'linewidth',2)

axis([0 intHorizon 4 15])


interval1 = 1:floor(intHorizon/3);
interval2 = floor(intHorizon/3):floor(intHorizon/3*2);
interval3 = floor(intHorizon/3*2):intHorizon;
plot(interval1,(5-0.5)*ones(1,length(interval1)),'--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval2,(10-0.5)*ones(1,length(interval2)),'--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval3,(8-0.5)*ones(1,length(interval3)),'--','linewidth',1,'color',[0.6 0.6 0.6])

plot(interval1,(5+0.5)*ones(1,length(interval1)),'--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval2,(10+0.5)*ones(1,length(interval2)),'--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval3,(8+0.5)*ones(1,length(interval3)),'--','linewidth',1,'color',[0.6 0.6 0.6])

xlabel('time step','interpreter','latex')
legend('Proposed','IAM','OSM','interpreter','latex')
title('Comparison of all algorithms for network size')
set(gca,'FontSize', 13);

