%pasul 1
Ra=1;
La=0.5;
c=0.01;
J=0.01;
%pasul 2
A=[0 c/J;-c/La -Ra/La];
b=[0;1/La];
C=[1 0];
%pasul 3
P=[-5+i -5-i];
%pasul 4
K=place(A,b,P)
%pasul 5
Kr=1/(C*((b*K-A)^(-1))*b)
