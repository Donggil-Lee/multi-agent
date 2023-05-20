nodeSet = {};
nodeSet{1} = [1:5];   % red agents
nodeSet{2} = [6:8];   % blue agents
nodeSet{3} = [9:10];  % green agents

figure(1)
subplot(3,1,2)
for j=1:(length(nodeSet))
    for i=nodeSet{j}
        if j == 1
            T = 1:horizon;
            color = [1 0 0];
            width = 1.2;
        elseif j==2
            T = (floor(horizon/3)):horizon;
            color = [0 0.4392 0.8706];
            width = 1.5;
        else
            T = floor(horizon/3):floor(horizon/3*2);
            color = [0.5725 0.8824 0.3137];
            width = 1.7;
        end
        plot(T,X(i,T),'color',color,'linewidth',width)
        hold on
    end
end

interval1 = 1:floor(horizon/3);
interval2 = floor(horizon/3):floor(horizon/3*2);
interval3 = floor(horizon/3*2):horizon;
plot(interval1,(5-0.5)*ones(1,length(interval1)),'--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval2,(10-0.5)*ones(1,length(interval2)),'--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval3,(8-0.5)*ones(1,length(interval3)),'--','linewidth',1,'color',[0.6 0.6 0.6])

plot(interval1,(5+0.5)*ones(1,length(interval1)),'--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval2,(10+0.5)*ones(1,length(interval2)),'--','linewidth',1,'color',[0.6 0.6 0.6])
plot(interval3,(8+0.5)*ones(1,length(interval3)),'--','linewidth',1,'color',[0.6 0.6 0.6])
grid on
axis([0 horizon 4 14])

title('Method of Shames for network size')
xlabel('time step')
set(gca,'FontSize', 13);
