%specificatiile impuse
wp=20;
Gp=0.794;
ws=10;
Gs=0.1;
%specificatiile exprimate in dB - calcul impus de functia buttord
R=1;
%inaltimea maxima a riplurilor in banda de trecere
GpdB=20*log10(Gp)
GsdB=20*log10(Gs)
%determinarea ordinului si a frecventei de frangere/taiere
[N1, wn1]=cheb1ord(wp,ws,GpdB,GsdB,'s')
%determinarea functiei de transfer
[num1, den1]=cheby1(N1,R,wn1,'high','s')
%trasarea grafica a caracteristicii modul-pulsatie
w=0:0.01:30
[mag,phase]=bode(num1,den1,w)
plot(w,mag,[wp ws],[Gp Gs],'o')
grid