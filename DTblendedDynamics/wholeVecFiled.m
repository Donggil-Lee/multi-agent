function value = wholeVecFiled(X,N,K,W)
reshapedX = reshape(X,[N,K+1]);
value = zeros(N*(K+1),1);
temp = [];
for i=1:(K+1)
    if i==1
        temp = [temp; indVecField(reshapedX(:,end),N)];
    else
        temp = [temp; W*reshapedX(:,i-1)];
    end
end
value  = temp;
end