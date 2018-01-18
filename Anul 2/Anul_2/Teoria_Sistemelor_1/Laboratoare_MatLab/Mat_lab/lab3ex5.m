Te=1;

num=[0 0 10];
den=[1 10 0];

num1=[1 0];
den1=[1 2];

numz=[1 0];
denz=[1 -1];

[numero,denero]=c2dm(num,den,Te,'zoh')
[num2,den2]=c2dm(num1,den1,Te,'zoh')
nn=conv(num1,numz);
dd=conv(den1,denz);

nf=conv(numero,nn);
df=conv(denero,dd);

printsys(nf,df,'z')