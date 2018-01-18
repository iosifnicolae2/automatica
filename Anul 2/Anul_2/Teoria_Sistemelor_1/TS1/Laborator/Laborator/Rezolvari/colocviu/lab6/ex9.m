num1=1
den1=[1 1]
num2=1
den2=[3 1]
w=[0:0.1:20]
t=[0:0.01:8]
z=freqs(num1,den1,w)
subplot(3,2,1)
plot(w,abs(z))
z1=freqs(num2,den2,w)
subplot(3,2,2)
plot(w,abs(z1))
subplot(3,2,3)
step(num1,den1,t)
subplot(3,2,4)
step(num2,den2,t)
den1=[1 1 0]
den2=[3 1 0]
subplot(3,2,5)
step(num1,den1,t)
subplot(3,2,6)
step(num2,den2,t)