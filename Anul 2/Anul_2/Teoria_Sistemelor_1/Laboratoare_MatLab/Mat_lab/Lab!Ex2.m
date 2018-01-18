k=2;
wn=5;
zita=0.7;
Te=1/50;
num=[0 0 k*wn^2]
den=[1 2*zita*wn wn^2]
[num1,den1]=c2dm(num,den,Te,'zoh')
printsys(num1,den1)
