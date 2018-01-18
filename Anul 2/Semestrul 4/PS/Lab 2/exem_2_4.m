w=0:.1:30
k = 1/5; %amplificarea sistemului
wn = 10; %pulsatia naturala
z = 0.7; %factorul de amortizare
num = [k*wn*wn wn*wn]; % s-a introdus zeroul z1=-5
den = [1 2*z*wn wn*wn];
%functia de transfer a filtrului num/den
Gw = bode(num,den,w);
%caracteristica modul-pulsatie = caracteristica Bode de amplitudine
plot(w,Gw)