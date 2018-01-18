%specificatiile impuse
wp1=12;
wp2=18;
Gp=0.794;
ws1=2;
ws2=28;
Gs=0.1;
%specificatiile exprimate in dB - calcul impus de functia buttord
GpdB=20*log10(Gp);
GsdB=20*log10(Gs);
%determinarea ordinului si a frecventei de frangere/taiere
[N1, wn1]=cheb1ord([wp1 wp2],[ws1 ws2],GpdB,GsdB,'s');
%determinarea functiei de transfer
[num1, den1]=cheby1(N1,R,wn1,'bandpass','s');
%trasarea grafica a caracteristicii modul-pulsatie
w=0:0.01:30;
[mag,phase]=bode(num1,den1,w);
plot(w,mag,[wp1 wp2 ws1 ws2],[Gp Gp Gs Gs],'o');grid
