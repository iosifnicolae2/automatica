w=0:0.01:3;
num=[4];
den=[1 2 4];
b=freqs(num,den,w);
plot(w,abs(b));
