load lab3_data
% [L U]=LU_decomp(A);
% d=forward_subst(L,b);
% x=back_subst(U,d);
% y=linsolve(A,b);
 [L U]=LU_decomp(A);
n=size(A,1);
A_inv  = zeros(n,n);
B=eye(n,n);
for i=1:n
    d = forward_subst(L,B(:,i));
    x=back_subst(U,d);
    A_inv(:,i) = x
end
e=sum(sum(abs(A_inv*A-B)))
    