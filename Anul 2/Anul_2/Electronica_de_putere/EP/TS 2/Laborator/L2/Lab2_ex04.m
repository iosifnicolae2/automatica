w=0:0.1:30;
%domeniul de frecvente
k = 1;
%amplificarea sistemului
wn = 20;
%pulsatia naturala
z = 0.9;
%factorul de amortizare
num = [k*wn*wn];
den = [1 2*z*wn wn*wn];
%functia de transfer a filtrului num/den
[z,p,k] = tf2zp(num,den);
%se obtin polii sistemului descris de num si den

Gw = bode(num,den,w);
%caracteristica modul-pulsatie = caracteristica Bode de amplitudine
subplot(121); 
plot(w,Gw,[abs(imag(p)) abs(imag(p))],[1 0]);

subplot(122);
plot(real(p),imag(p),'x')