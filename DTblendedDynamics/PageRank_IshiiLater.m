clear all
clc

rng(1)
%% define time-varying graph
callGraph;
m = 0.2;
p1 = genPageScore(A1,D1,N,m);
p2 = genPageScore(A2,D2,N,m);
p3 = genPageScore(A3,D3,N,m);
%%

m = 0.01;
x = m/5*ones(N,1);
z = m/5*ones(N,1);
X = [];
horizon = 1500;
for t=1:horizon
    if t<horizon/3
        A = A1*pinv(D1);
    elseif t>=horizon/3 && t< horizon/3*2
        A = A2*pinv(D2);
        if t==horizon/3
            x(6:10) = m*ones(5,1)/5;
            z(6:10) = m*ones(5,1)/5;
        end
    else
        A = A3*pinv(D3);
    end
    x = x+(1-m)*A*z;
    z = (1-m)*A*z;
    X = [X x];
end

figure(1)
for i=1:5
plot(X(i,:))
hold on
plot(1:horizon,p1(i)*ones(1,horizon),'--')
end

save('PageRank_IshiiLater_data.mat')
PageRank_IshiiLater_Draw;

