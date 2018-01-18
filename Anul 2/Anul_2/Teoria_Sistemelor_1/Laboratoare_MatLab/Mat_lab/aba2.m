t=[0:0.02:4]
w=[0:0.01:3]
num=[10]
den=[1 4.5 9 10]
f=step(num,den,t)
a=freqs(num,den,w)
subplot(2,1,1)
plot(f,t)
subplot(2,1,2)
plot(a,w)