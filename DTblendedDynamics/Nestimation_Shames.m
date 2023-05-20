clear all
clc
rng(1)
%% define time-varying graph
callGraph;

%% generate Metropolis-Hasting coupling weight w_{ij}^{MH}, deoted in this code as [W]_{ij}, for network size estimation
mu = 0.1;
W1 = genMHweight(A1,D1,N,mu);
W2 = genMHweight(A2,D2,N,mu);
W3 = genMHweight(A3,D3,N,mu);

%% run the algorithm

y = ones(N,1);            % state for left inverse component
z = [1;zeros(N-1,1)];     % state for weighted average

horizon = 1500+1;
Y = [];
Z = [];
X = [];
for t = 1:horizon
    X = [X (y./z)];       % stack the estimation result for network size
    if t < horizon/3
        y = W1*y;
        z = W1*z;
    elseif t>=horizon/3 && t< 2*horizon/3
        y = W2*y;
        z = W2*z;
    else
        y = W3*y;
        z = W3*z;
    end
end

save('Nestimation_Shames_data.mat')
Nestimation_Shames_Draw;