function value = indVecField(x,N)
    value = zeros(N,1);
    for i=1:N
        if i==1
            value(i) = 1;
        else
            value(i) = 1+x(i);
        end
    end
end