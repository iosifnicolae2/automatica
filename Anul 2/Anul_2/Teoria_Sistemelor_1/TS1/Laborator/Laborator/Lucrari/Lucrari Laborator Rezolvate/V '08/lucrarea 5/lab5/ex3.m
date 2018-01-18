t=[0:0.02:4];
Mv=0.4;
z=abs(log(Mv))/sqrt(pi^2+log(Mv)^2);
tv=0.8;
w=pi/(tv*sqrt(1-z^2));
num=[w^2];
den=[1 2*z*w w^2];
step(num,den,t);