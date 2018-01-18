%specificatiile impuse
wp1=2;
wp2=28;
Gp=0.794;
ws1=12;
ws2=18;
Gs=0.1;
R=1;

GpdB=20*log10(Gp);
GsdB=20*log10(Gs);

[N1, wp]=cheb1ord([wp1 wp2],[ws1 ws2],GpdB,GsdB,'s');
[numFTS, denFTS] = cheby1(N1,R,wp,'high','s');

w=0:0.01:100;
[mag,phase]=bode(numFTS,denFTS,w);
plot(w,mag,[wp1 wp2],[Gp Gs],'o');grid