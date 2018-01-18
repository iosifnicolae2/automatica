w=0:0.1:30; %domeniul de frecventa pentru care se traseaza caracteristica
z = [-2+j ;-2-j]; %zerourile (nu are)
p = [-5+j*10 -5-j*10]; %polii impusi
k = prod(p); %amplificarea egala cu produsul polilor pentru a indeplini conditia ca in 0 sa avem castig unitar – filtru trece-jos
[num, den] = zp2tf(z,p,k);
%se obtine functia de transfer a sistemului cu polii alesi
Gw = bode(num,den,w);
%caracteristica modul-pulsatie = caracteristica Bode de amplitudine
plot(w,Gw);
pzmap(p,z)
