num1=[1];
den1=[1 1 0];
num2=[2];
den2=[1 4 0];
[num1z, den1z]=c2dm(num1, den1, 0.3, 'zoh');
[n,d]=series(num2,den2,[1 0],[1 -1]);
[num2z, den2z]=c2dm(n, d, 0.3, 'zoh');
[numz,denz]=series(num1z,den1z, num2z,den2z);
printsys(numz,denz,'z')