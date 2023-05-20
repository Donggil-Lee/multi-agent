function [y] = findLocalMaximum(A,x,N,M)
    E = kron(A+eye(N,N),eye(M,M));
    y = zeros(N*M,1);
    for i=1:size(E,1)
        y(i) = max(x(find(E(i,:))));
    end
end

