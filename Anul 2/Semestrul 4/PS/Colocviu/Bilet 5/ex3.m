wp1 = 12;
wp2 = 18;
Gp = 0.794;
ws1 = 2;
ws2 = 28;
Gs = .1;

GpdB = 10*log10(Gp);
GsdB = 10*log10(Gs);

%determinarea ordinului si a frecventei de frangere/taiere
[N1, wn1]=buttord([wp1 wp2],[ws1 ws2],GpdB,GsdB,'s');
%determinarea functiei de transfer
[num1, den1]=butter(N1,wn1,'bandpass','s');

w=0:.1:30
Gw = bode(num1, den1,w);
plot(Gw)