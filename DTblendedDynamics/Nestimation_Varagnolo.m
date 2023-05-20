clear all
clc
rng(1)
%% define time-varying graph
callGraph;

%% run the algorithm
M = 100;           % the number of data to be communicated among the agents
HatN = [];
z0 = rand(N*M,1);
z = z0; 
horizon = 1500+1;
X = [];
Z = [];
for t = 1:horizon
    Z = [Z z];
    temp = reshape(z,[M,N]);
    x = (estimateNetworkSize(z,N,M));
    X = [X x];               % stack the estimation result for network size
    if t < horizon/3
        z = findLocalMaximum(A1,z,N,M);
    elseif t>=horizon/3 && t< 2*horizon/3
        z = findLocalMaximum(A2,z,N,M);
    else
        z = findLocalMaximum(A3,z,N,M);
    end
end

save('Nestimation_Varagnolo_data.mat')
Nestimation_Varagnolo_Draw;