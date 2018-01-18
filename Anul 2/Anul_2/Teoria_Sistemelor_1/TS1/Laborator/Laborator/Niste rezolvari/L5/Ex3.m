num1=[1];
den1=[1 1];
num2=[1];
den2=[1 2];
[num,den]=feedback(num1,den1,num2,den2,-1);
pzmap(num,den)