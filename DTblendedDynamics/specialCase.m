clear all
close all
clc
%% generate Metropolis-Hasting coupling weight w_{ij}^{MH}, deoted in this code as [W]_{ij}, for network size estimation
callGraph; % generate A1,A2,A3 and D1,D2,D3

mu = 0.1;
W1 = genMHweight(A1,D1,N,mu);
W2 = genMHweight(A2,D2,N,mu);
W3 = genMHweight(A3,D3,N,mu);


%%
K = 25;
horizon = 25*200;
x = zeros(N*(K+1),1);
X = [];
for t=1:horizon
    if t<horizon/3
        x = wholeVecFiled(x,N,K,W1);
    elseif t>=horizon/3 && t<horizon/3*2
        x = wholeVecFiled(x,N,K,W2);
    else
        x = wholeVecFiled(x,N,K,W3);
    end
    X = [X x(251:260)];
end

figure(1)
agentSet = {};
agentSet{1} = [1:5];
agentSet{2} = [6:8];
agentSet{3} = [9:10];
hold on
grid on
for j=1:3
    for i=agentSet{j}
        if j==1
            T = 1:horizon;
            color = [1 0 0];
            width = 2;
        elseif j==2
            T = floor(horizon/3):horizon;
            color = [0 0 1];
            width = 1;
        else
            T = floor(horizon/3):floor(horizon/3*2);
            color = [0 1 0];
            width = 1.5;
        end
        
        plot(T,X(i,T),'color',color,'linewidth',width)
        
    end
end
Horizon = horizon;
interval1 = 1:floor(Horizon/3);
interval2 = floor(Horizon/3):floor(Horizon/3*2);
interval3 = floor(Horizon/3*2):Horizon;
plot(interval1,5*ones(1,length(interval1)),'black--','linewidth',1)
plot(interval2,10*ones(1,length(interval2)),'black--','linewidth',1)
plot(interval3,8*ones(1,length(interval3)),'black--','linewidth',1)
grid on
axis([0 5000 0 20])


title('new method for network size')
xlabel('time step')
set(gca,'FontSize', 13);