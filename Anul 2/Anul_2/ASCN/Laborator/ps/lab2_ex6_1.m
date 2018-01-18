k = 0.2; %amplificarea sistemului
w=0:0.1:300;
num = [k k*10 k*250]
den = [1 10 50]
%functia de transfer a filtrului num/den
Gw = bode(num,den,w);
%caracteristica modul-pulsatie = caracteristica Bode de amplitudine
plot(w,Gw)