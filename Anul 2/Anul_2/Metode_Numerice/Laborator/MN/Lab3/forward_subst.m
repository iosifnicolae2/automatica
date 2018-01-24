function [x]=forward_subst(A,b)
n=size(A);
n=n(1);
x=zeros(n,1);
x(1)= b(1)/A(1,1);
for i = 2:size(A,1)
    x(i) = (b(i) - A(i,:)*x)/A(i,i)
end
end