wp=0.1;
ws=0.7;
Gp=0.4;
Gs=0.2;

GpdB=20*log10(Gp);
GsdB=20*log10(Gs);

[N,wn]=cheb1ord(wp,ws,GpdB,GsdB,'s');
[num,den]=cheby1(N,Gp,wn,'high','s');

tf(num,den)

[mag,phase,w]=bode(num,den)
plot(w,mag);