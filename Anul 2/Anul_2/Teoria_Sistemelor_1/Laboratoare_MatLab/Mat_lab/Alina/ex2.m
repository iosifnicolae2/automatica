w=0:0.1:300;
num=[0 0 48];
den=[1 8 48];
Gw=bode(num,den,w);
plot(w,Gw)