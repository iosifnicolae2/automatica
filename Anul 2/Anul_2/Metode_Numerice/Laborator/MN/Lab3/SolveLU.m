function [x] = SolveLU (A,b)
    [L,U] = LU_decomp(A);
    x = back_subst_LU(A, L, U, b);
end

