t=[0:0.1:8];
num2=[0 0 1];
den2=[0 3 1];
g1=freqs(num2,den2,t)
subplot(2,2,1)
plot(w,g1)
subplot(2,2,2)
step(num2,den2,t)
den12=[1 0 0];
den12=[1 1 0]
subplot(2,2,3)
step(num1,den12,t)