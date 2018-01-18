w=0:0.1:30;
z = [];
p = [-7+j*5 -7-j*5];
p1 = [-7+j*5 -7-j*5 -5+j*10 -5-j*10];
%polii
k = prod(p);
[num, den] = zp2tf(z,p,k);
Gw = bode(num,den,w);
plot(w,Gw,'red'); hold on
k = prod(p1);
[num, den] = zp2tf(z,p1,k);
Gw = bode(num,den,w);
plot(w,Gw); hold off


