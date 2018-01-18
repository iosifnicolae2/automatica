w=0:0.1:30;
z=[];
p=[-7+j*5 -7-j*5 -5+j*10 -5-j*10];
k=prod(p)
[num,den]=zp2tf(z,p,k);
Gw=bode(num,den,w);
plot(w,Gw);