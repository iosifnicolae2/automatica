w=0:0.1:10;
nr=[20 100];
num=[1 14 100];
Gw=bode(nr,num,w);
plot(w,Gw);