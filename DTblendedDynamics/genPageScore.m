function [p] = genPageScore(A,D,N,m)

W = m*eye(N,N)+(1-m)*A*pinv(D);
[eigVec,eigVal] = eig(W);

[~,idx] = max(eigVal*ones(N,1)); 
p = eigVec(:,idx);
p = p/(ones(1,N)*p); % each ith element is the PageRank score of node i
end

