clear all
clc
rng(1)
%% define time-varying graph
callGraph;

%% underying graph is supposed to be undirected. In particular, in-neighbor deg == out-neighbor holds

m = 0.2;
p1 = genPageScore(A1,D1,N,m);
p2 = genPageScore(A2,D2,N,m);
p3 = genPageScore(A3,D3,N,m);

%%
horizon = 1500*100;    % In gossip algortithm, only one communication is proceed. To obtain fair comparison, we consider that 100 times of gossip communication is equal to one synchronized communication
x = [1;zeros(9,1)];
z = zeros(N,1);
X = [];
Z = [];
count = 0;
alpha = m;
for t=1:horizon
    if t<horizon/3
        A = A1*pinv(D1);
        toss = round(rand*5);
        if toss == 0
            toss = 5;
        end
    elseif t>=horizon/3 && t<horizon/3*2
        A = A2*pinv(D2);
        toss = round(rand*10);
        if toss == 0
            toss = 10;
        end
    else
        A = A3*pinv(D3);
        toss = round(rand*8);
        if toss == 0
            toss = 8;
        end
    end
    
    temp = zeros(N,N);
    temp(:,toss) = -A(:,toss);
    temp(toss,toss) = 1;
    At = eye(N,N)-temp;
    count = count + 1;
    z = z + x;
    x = At*x;
    
    if mod(t,100)==0
        X = [X x];
        Z = [Z z/count];
    end
end

save('PageRank_Ishii_data.mat')
PageRank_Ishii_Draw;

