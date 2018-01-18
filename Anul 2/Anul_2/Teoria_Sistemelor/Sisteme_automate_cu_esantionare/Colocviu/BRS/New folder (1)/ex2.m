num=[0 0 2];
den=[1 1 0];
[num1z,den1z]=c2dm(num,den,0.3,'zoh');
[numz,denz]=cloop(num1z,den1z);
rlocus(numz,denz)