t=[0:0.02:4];
mv=0.4;
tv=0.8;
z=abs(log(mv))/sqrt(pi^2+log(mv)^2)
omega=pi/tv*sqrt(1-z^2)
d=omega^2;
e=(2*z*omega-1)/d
num=[d];
den=[1 1+d*e d];
step(num,den,t)