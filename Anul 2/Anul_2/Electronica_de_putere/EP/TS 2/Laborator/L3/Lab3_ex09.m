%specificatiile impuse
wp=10;
Gp=0.794;
ws=20;
Gs=0.1;
%specificatiile exprimate in dB - calcul impus de functia buttord
R=20;
%inaltimea maxima a riplurilor in banda de trecere
GpdB=20*log10(Gp);
GsdB=20*log10(Gs);
%determinarea ordinului si a frecventei de frangere/taiere
[N1, wn1]=cheb2ord(wp,ws,GpdB,GsdB,'s');
%determinarea functiei de transfer
[num1, den1]=cheby2(N1,R,wn1,'s');
%trasarea grafica a caracteristicii modul-pulsatie
w=0:0.01:30;
[mag,phase]=bode(num1,den1,w);
plot(w,mag,[wp ws],[Gp Gs],'o');grid
