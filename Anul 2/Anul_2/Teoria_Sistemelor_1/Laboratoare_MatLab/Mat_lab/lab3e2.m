
wp=20;
Gp=0.794;5
ws=10;
Gs=0.1;

GpdB=20*log10(Gp);
GsdB=20*log10(Gs);

[N1, wn1]=buttord(wp,ws,GpdB,GsdB,'s');

[num1, den1]=butter(N1,wn1,'high','s');

w=0:0.01:30;
[mag,phase]=bode(num1,den1,w);
plot(w,mag,[wp ws],[Gp Gs],'o');grid