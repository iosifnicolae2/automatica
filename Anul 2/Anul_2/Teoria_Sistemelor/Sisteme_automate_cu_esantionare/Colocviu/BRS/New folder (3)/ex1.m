num=[0,0,9];
den=[1,7,0];

[numz,denz]=c2dm(num,den,0.3,'zoh');
[numz2,denz2]=cloop(numz,denz);
printsys(numz2,denz2,'z')
rlocus(numz2,denz2)