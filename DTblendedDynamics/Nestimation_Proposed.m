clear all
clc

rng(1)
%% define time-varying graph
callGraph; % generate A1,A2,A3 and D1,D2,D3

%% generate Metropolis-Hasting coupling weight w_{ij}^{MH}, deoted in this code as [W]_{ij}, for network size estimation
mu = 0.1;
W1 = genMHweight(A1,D1,N,mu);
W2 = genMHweight(A2,D2,N,mu);
W3 = genMHweight(A3,D3,N,mu);

%% underying graph is supposed to be undirected. In particular, in-neighbor deg == out-neighbor holds
% compute the PageSocre in a centralized sense
m = 0.2;
p1 = genPageScore(A1,D1,N,m);
p2 = genPageScore(A2,D2,N,m);
p3 = genPageScore(A3,D3,N,m);

%% run the algorithms, for estimating network size and PageRank
K = 25;
nu = 0.9;

x = 10*(rand(N,1)-0.5); % state for network size estimation
z = (rand(N,1)-0.5);                                       % state for PageRank estimation

horizon = K*1500+1;
X = [];
Z = [];
for t = 1:horizon
    if mod(t,K)==0
        X = [X x];
        Z = [Z z];
        z = nu*z+ones(N,1)*(1-nu)./max(round(x),1);
        x = ones(N,1)+x-x(1)*eye(N,1);
    elseif t < horizon/3
        x = W1*x; 
        z = m*z + (1-m)*A1*pinv(D1)*z;
    elseif t>=horizon/3 && t< 2*horizon/3
        x = W2*x;
        z = m*z + (1-m)*A2*pinv(D2)*z;
    else
        x = W3*x;
        z = m*z + (1-m)*A3*pinv(D3)*z;
    end
end

save('Nestimation_Proposed_data.mat')
Nestimation_Proposed_Draw;