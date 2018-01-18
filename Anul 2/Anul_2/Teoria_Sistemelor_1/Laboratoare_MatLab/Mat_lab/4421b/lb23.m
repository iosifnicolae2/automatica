w=[0:0.01:3]
num=[0 0 4];
den=[1 2 4];
q=freqs(num,den,w)
plot(w,abs(q))