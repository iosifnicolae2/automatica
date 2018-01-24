function [x] = back_subst(A, L, U, b) 
    n = size(A);
    n = n(1);
    d = zeros(n,1);
    
    d(1) = b(1)/L(1,1);
    for i = 2:n-1
       d(i) = (b(i) - L(i,1:i-1)*d(1:i-1))/L(i,i); 
    end
    
    x = zeros(n,1);
    % soluția x_n
    x(n) = d(n)/U(n,n);
    % soluțiile rămase în ordine inversă
    for i = n-1:-1:1
        x(i) = (d(i) - U(i,i+1:n)*x(i+1:n))/U(i,i); 
    end
end