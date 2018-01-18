k=1;
Te=0.3;

num=[0 0 1];
den=[1 1 0];




[num1,den1]=c2dm(num,den,Te,'zoh')

[num2,den2]=cloop(num1,den1,-1)
printsys(num2,den2,'z')
