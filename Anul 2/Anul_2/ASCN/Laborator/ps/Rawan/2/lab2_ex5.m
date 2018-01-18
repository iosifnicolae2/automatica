k = 1/425; %amplificarea sistemului
w=0:0.1:300;
wn = 10; %pulsatia naturala
z = 0.7 %factorul de amortizare
num = [wn*wn*k 10*wn*wn*k wn*wn]
den = [1 2*z*wn wn*wn]
%functia de transfer a filtrului num/den
Gw = bode(num,den,w);
%caracteristica modul-pulsatie = caracteristica Bode de amplitudine
plot(w,Gw)