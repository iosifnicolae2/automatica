num1=[0 0 1];
den1=[1 1 0];
num2=[0 0 2];
den2=[0 1 1];
[num1z, den1z]=c2dm(num1, den1, 0.3, 'zoh');
[num2z, den2z]=c2dm(num2, den2, 0.3, 'zoh');
[numz,denz]=series(num1z,den1z, num2z,den2z);
printsys(numz,denz,'z')