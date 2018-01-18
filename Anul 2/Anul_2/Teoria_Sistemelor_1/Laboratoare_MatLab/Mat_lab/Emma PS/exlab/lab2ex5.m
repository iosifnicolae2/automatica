w=0:0.1:30;
nr=[0.23 2.35 100];
num=[1 14 100];
[z,p]=tf2zp(nr,num);
Gw=bode(nr,num,w);
plot(w,Gw);