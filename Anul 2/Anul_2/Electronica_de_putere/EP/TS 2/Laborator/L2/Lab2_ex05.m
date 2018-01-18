w=0:0.1:30;
%domeniul de frecvente
z = [];
%zerourile
p = [-7+j*15 -7-j*15];
%polii
k = prod(p);
%amplificarea
[num, den] = zp2tf(z,p,k);
%se obtine functia de transfer a sistemului cu polii alesi
Gw = bode(num,den,w);
%caracteristica modul-pulsatie = caracteristica Bode de amplitudine
plot(w,Gw);
