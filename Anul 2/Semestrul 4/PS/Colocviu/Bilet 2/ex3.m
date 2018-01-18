z = [];
p = [-6+j*5 -6-j*5]; 
k = prod(p); 
[num, den] = zp2tf(z,p,k);
Gw = bode(num,den,w);
plot(Gw)