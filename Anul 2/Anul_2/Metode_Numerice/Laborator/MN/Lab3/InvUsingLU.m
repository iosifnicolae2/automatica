function [A_inv] = InvUsingLU (A)
    [L,U] = LU_decomp(A);
    n = size(A);
    n = n(1);
    A_inv = zeros(n,n);

    % parcurgem coloanele
    for c=1:n
        b = zeros(1,n);
        d = zeros(n,1);
        
        d(1) = b(1)/L(1,1);
        b(c) = 1;
        for i = 2:n
           d(i) = (b(i) - L(i,1:i-1)*d(1:i-1))/L(i,i); 
        end

        x = zeros(n,1);
        x(n) = d(n)/U(n,n);
        for i=n-1:-1:1
            x(i) = (d(i) - U(i,i+1:n)*d(i+1:n))/U(i,i);
        end

        A_inv(:,c) = x;
    end
end

