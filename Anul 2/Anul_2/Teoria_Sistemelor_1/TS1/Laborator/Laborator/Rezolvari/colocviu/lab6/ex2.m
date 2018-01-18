num=[10]
den1=[1 2.5]
den2=[1 2 4]
den=conv(den1,den2)
t=[0:0.02:4]
w=[0:0.01:3]
subplot(2,1,1)
z=step(num,den,t)
plot(t,z)
subplot(2,1,2)
y=freqs(num,den,w)
plot(w,abs(y))