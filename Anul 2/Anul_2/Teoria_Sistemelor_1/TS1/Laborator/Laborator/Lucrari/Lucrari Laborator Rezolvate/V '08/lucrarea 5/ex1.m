t=[0:0.02:2];
omega=5;
z=0.6;
num=omega^2;
den=[1 2*z*omega num];
step(num,den,t)
