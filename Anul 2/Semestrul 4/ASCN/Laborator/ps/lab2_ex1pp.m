k = 1/2; %amplificarea sistemului
w=0:0.1:300;
wn = 10; %pulsatia naturala
z = 0.7 %factorul de amortizare
z1=-2;
num = [k*wn*wn*(-z1) wn*wn];
den = [1 2*z*wn wn*wn];
%functia de transfer a filtrului num/den
Gw = bode(num,den,w);
%caracteristica modul-pulsatie = caracteristica Bode de amplitudine
plot(w,Gw)
