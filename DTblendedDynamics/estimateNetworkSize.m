function [hatN] = estimateNetworkSize(x,N,M)
    hatN = zeros(N,1);
    tempX = reshape(x,[M,N]);
    for i=1:N
        hatN(i) = M/sum(-log(tempX(:,i)));
    end
end

