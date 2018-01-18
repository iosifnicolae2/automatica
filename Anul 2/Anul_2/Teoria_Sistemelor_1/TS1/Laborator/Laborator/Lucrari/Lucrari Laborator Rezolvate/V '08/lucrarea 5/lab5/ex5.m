t=[0:0.1:2];
num1=[0 6];
den1=[1,2];
num2=[0 -4];
den2=[1 1];
[a,b]=parallel(num1,den1,num2,den2);
step(a,b,t)