wp=40;
Gp=0.891;
ws=80;
Gs=0.1;
GpdB=20*log10(Gp);
GsdB=20*log10(Gs);

[N1, wn1]=buttord(wp,ws,GpdB,GsdB,'s');

[num, den]=butter(N1,wn1,'low','s');
x= tf(num,den)
