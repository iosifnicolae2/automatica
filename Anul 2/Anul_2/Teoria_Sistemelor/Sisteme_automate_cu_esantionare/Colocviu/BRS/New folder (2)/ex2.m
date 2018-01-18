num1=[0 1];
den1=[1 1];
num2=[1 3];
den2=[1 2];
[num,den]=series(num1, den1, num2, den2);
[numz,denz]=c2dm(num,den,0.1,'zoh');
printsys(numz,denz)