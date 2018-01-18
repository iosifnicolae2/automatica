k=1;
w=0:0.1:10;
wn=10;
z=0.7;
num=[k*wn*wn];
den=[1 2*z*wn wn*wn];
Gw=bode(num,den,w);
plot(w,Gw);