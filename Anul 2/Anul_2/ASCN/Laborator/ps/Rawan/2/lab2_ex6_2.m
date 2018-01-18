k = 0.5; %amplificarea sistemului
w=0:0.1:300;

num = [k k*10 k*50]
den = [1 10 250]
%functia de transfer a filtrului num/den
Gw = bode(num,den,w);
%caracteristica modul-pulsatie = caracteristica Bode de amplitudine
plot(w,Gw)