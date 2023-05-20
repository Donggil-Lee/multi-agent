function [W] = genMHweight (A,D,N,mu)

tempMat = [];
test1 = A*D;
test2 = D*ones(N,N);
for i=1:N
    for j=1:N
        tempMat(i,j) = 0;
        if test1(i,j) ~= 0
            tempMat(i,j)=1/max(test1(i,j),test2(i,j));
        end
    end
end
W = (1-mu)*tempMat ;
for i=1:N
    W(i,i) = 1-sum(W(i,:));
end

end

