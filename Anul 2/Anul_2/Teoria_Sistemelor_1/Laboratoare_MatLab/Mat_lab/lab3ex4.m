Te=0.3;
num=[0 1];
den=[1 1];

numz=[1 0];
denz=[1 -1];

[num1,den1]=c2dm(num,den,Te,'zoh')
nn=conv(num1,numz);
dd=conv(den1,denz);

[num2,den2]=cloop(nn,dd,-1)
printsys(num2,den2,'z')