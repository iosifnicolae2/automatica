num=[4]
den=[1 2 4]
w=[0:0.01:3]
z=freqs(num,den,w)
plot(w,abs(z))