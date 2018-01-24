function [L, U] = LU_decomp(A)
    n = size(A);
    n = n(1);
    L = eye(n,n);
    U = A;
    % Se parcurge fiecare element de sub diagonala principală 
    for col = 1:n
        for row = col+1:n
        % Se calculează matricea elementară pentru reducerea elementului curent de sub diagonala principală 
        E_tmp = eye(n,n);
        factor = U(row,col)/U(col,col);
        E_tmp(row,:) = E_tmp(row,:) - E_tmp(col,:)*factor;
        % Se calculează matricile U și L
        U = E_tmp*U;
        L = L*(-E_tmp + 2*eye(n,n)); 
        %(-E_tmp + 2*eye(n,n)) reprezintă inversa matricei E_tmp
        end
    end
end
