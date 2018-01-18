w=[0:0.1:20];
t=[0:0.1:8];
num1=[0 0 1];
den1=[0 1 1];
g=freqs(num1,den1,w);
subplot(2,2,1)
plot(w,g)
subplot(2,2,2)
step(num1,den1,w)
den12=[1 0 0];
den12=[1 1 0]
subplot(2,2,3)
step(num1,den12,w)