
wp=10;
Gp=0.794;
ws=20;
Gs=0.1;

R=1;

GpdB=20*log10(Gp);
GsdB=20*log10(Gs);

[N1, wn1]=cheb1ord(wp,ws,GpdB,GsdB,'s');

[num1, den1]=cheby1(N1,1,wn1,'s');

w=0:0.01:30;
[mag,phase]=bode(num1,den1,w);
plot(w,mag,[wp ws],[Gp Gs],'o');grid