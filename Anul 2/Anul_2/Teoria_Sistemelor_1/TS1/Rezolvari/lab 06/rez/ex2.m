w=[0:.01:3];
t=[0:.02:4];
num=[0 0 10];
den1=[0 1 2.5];
den2=[1 2 4];
den=conv(den1,den2);
subplot(2,1,1);
step(num,den,t);
subplot(2,1,2);
g=freqs(num,den,w);
plot(w,abs(g));