nodeSet = {};
nodeSet{1} = [1:5];   % red agents
nodeSet{2} = [6:8];   % blue agents
nodeSet{3} = [9:10];  % green agents

figure(1)
subplot(3,1,1)
intHorizon = floor(horizon/K);
for j=1:(length(nodeSet))
    for i=nodeSet{j}
        if j == 1
            T = 1:intHorizon;
            color = [1 0 0];
            width = 1.2;
        elseif j==2
            T = (floor(intHorizon/3)):intHorizon;
            color = [0 0.4392 0.8706];
            width = 1.5;
        else
            T = floor(intHorizon/3):floor(intHorizon/3*2);
            color = [0.5725 0.8824 0.3137];
            width = 1.7;
        end
        plot(T,X(i,T),'color',color,'linewidth',width)
        hold on
    end
end
axis([0 intHorizon 4 12])

interval1 = 1:floor(intHorizon/3);
interval2 = floor(intHorizon/3):floor(intHorizon/3*2);
interval3 = floor(intHorizon/3*2):intHorizon;
plot(interval1,(5-0.5)*ones(1,length(interval1)),'black--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval2,(10-0.5)*ones(1,length(interval2)),'black--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval3,(8-0.5)*ones(1,length(interval3)),'black--','linewidth',1,'color',[0.6 0.6 0.6])

plot(interval1,(5+0.5)*ones(1,length(interval1)),'black--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval2,(10+0.5)*ones(1,length(interval2)),'black--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval3,(8+0.5)*ones(1,length(interval3)),'black--','linewidth',1,'color',[0.6 0.6 0.6])
grid on

title('proposed method for network size')
xlabel('time step (integer count)','interpreter','latex')
set(gca,'FontSize', 13);

figure(3)
subplot(3,1,1)
for j=1:(length(nodeSet))
    for i=nodeSet{j}
        if j == 1
            T = 1:intHorizon;
            color = [1 0 0];
        elseif j==2
            T = floor(intHorizon/3+1):intHorizon;
            color = [0 0.4392 0.8706];
        else
            T = floor(intHorizon/3):(intHorizon/3*2);
            color = [0.5725 0.8824 0.3137];
        end
        plot(T,Z(i,T),'color',color,'linewidth',1.5)
        hold on
    end
end







nodeSetEachStage = {};
nodeSetEachStage{1} = [1:5];
nodeSetEachStage{2} = [1:10];
nodeSetEachStage{3} = [1:5];
interval1 = 1:floor(intHorizon/3);
interval2 = floor(intHorizon/3):floor(intHorizon/3*2);
% interval3 = floor(intHorizon/3*2):intHorizon;
for j=1:3
    for i=nodeSetEachStage{j}
        if j==1
            p = p1;
            interval = interval1;
        elseif j==2
            p = p2;
            interval = interval2;
        else
            p = p3;
            interval = interval3;
        end
        plot(interval,p(i)*ones(1,length(interval)),'--','linewidth',1,'color',[0.6 0.6 0.6])
    end
end
grid on
axis([0 intHorizon -0.00 0.32])
title('Proposed method for PageRank')
xlabel('time step (integer count)','interpreter','latex')
set(gca,'FontSize', 13);
save('Nestimation_Proposed_data.mat')
