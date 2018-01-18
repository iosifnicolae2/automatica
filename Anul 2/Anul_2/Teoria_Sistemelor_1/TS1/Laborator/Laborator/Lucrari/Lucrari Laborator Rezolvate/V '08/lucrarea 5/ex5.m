t=[0:0.1:2];
num1=[6];
den1=[1 2];
num2=[4];
den2=[1 1];
[n,m]=parallel(num1,den1,num2,-den2)
step(n,m,t)