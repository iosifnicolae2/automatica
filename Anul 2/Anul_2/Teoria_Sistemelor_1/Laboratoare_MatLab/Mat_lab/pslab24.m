w=0:0.1:10;
nums=[20 100];
dens=[1 14 100];
[z1,p,k]=tf2zp(nums,dens)
[num,den]=zp2tf(z1,p,k);
Gw=bode(num,den,w);
plot(w,Gw);