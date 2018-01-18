t=0:0.02:4;
num1=[3];
den1=[1 1 0];
num2=[4 1];
den2=[1];
[num, den]=feedback(num1,den1,num2,den2,-1);
step(num,den,t)
