% S? se proiecteze un filtru trece-jos de tip Butterworth cu specifica?iile:
% ?p = 10 , Gp = 0.794 (-2dB), ?s = 20 , Gs = 0.1 (-20dB)
%specificatiile impuse
wp=10;
Gp=0.794;
ws=20;
Gs=0.1;
%specificatiile exprimate in dB - calcul impus de functia buttord
GpdB=20*log10(Gp);
GsdB=20*log10(Gs);
%determinarea ordinului si a frecventei de frangere/taiere
[N1, wc1]=buttord(wp,ws,GpdB,GsdB,'s');
%determinarea functiei de transfer
[num1, den1]=butter(N1,wc1,'s');
%trasarea grafica a caracteristicii modul-pulsatie
w=0:0.01:30;
[mag,phase]=bode(num1,den1,w);
plot(w,mag,[wp ws],[Gp Gs],'o');grid

% Pentru a ob?ine func?ia de transfer a filtrului prototip Butterworth (trece-jos normalizat) de
% ordinul n se folose?te secven?a:

[z,p,k]=buttap(n);
%returneaza zerourile, polii si amplificarea FB de ordinul n
[num,den]=zp2tf(z,p,k);
% returneaza numaratorul si numitorul functiei de transfer a FB