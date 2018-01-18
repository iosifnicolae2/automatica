num=[0 0 4];
den=[1 2 4];
w=[0:0.01:3];
g=freqs(num,den,w);
plot(w,abs(g));
