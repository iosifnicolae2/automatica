num=10;
den=conv([1 2.5] , [1 2 4]);
t=0:0.02:4;
w=0:0.01:3;
G= TF(num,den);
subplot(1,2,1); step(G)
a=freqs(num,den,w);
subplot(1,2,2);plot(w,abs(a))