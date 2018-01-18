wp1=2;
wp2=28;
Gp=0.794;
ws1=12;
ws2=18;
Gs=0.1;

GpdB=20*log10(Gp);
GsdB=20*log10(Gs);

[N1, wn1]=buttord([wp1 wp2],[ws1 ws2],GpdB,GsdB,'s');

[num1, den1]=butter(N1,wn1,'stop','s');

w=0:0.01:30;
[mag,phase]=bode(num1,den1,w);
plot(w,mag,[wp1 wp2 ws1 ws2],[Gp Gp Gs Gs],'o');grid