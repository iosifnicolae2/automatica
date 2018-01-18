w=[0:0.01:3];
num=[0 0 1];
den=[1 2 4];
g=freqs(num,den,w)
plot(w,abs(g));