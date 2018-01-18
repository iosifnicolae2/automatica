num=[0 0 4];
den=[1 2 4];
w=[0:0.01:3]; 
q=freqs(num,den,w);
plot(w,q)