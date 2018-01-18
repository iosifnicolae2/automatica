t=[0:0.1:30];
num1=[0 0 9];
den1=[1 7 0];
[num2,den2]=c2dm(num1,den1,0.1,'zoh')
 
 printsys(num2,den2,'z')