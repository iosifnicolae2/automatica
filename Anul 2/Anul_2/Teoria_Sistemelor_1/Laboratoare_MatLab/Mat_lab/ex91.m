w=[0:0.1:20];
t=[0:0.1:8];
num1=[0 0 1];
den1=[0 1 1];
g=freqs(num1,den1,w); 
%sistemul 1: 
subplot(2,2,1)
plot(w,abs(g))
subplot(2,2,2)
step(num1,den1,t)
den12=[1 0 0];
den12=[1 1 0]
subplot(2,2,3) 
step(num1,den12,t)

Al 2-lea sistem :
w=[0:0.1:20];
t=[0:0.1:8];

num2=[0 0 1];
den2=[0 3 1];

g=freqs(num2,den2,w)
subplot(2,2,1)
plot(w,abs(g))

subplot(2,2,2)
step(num2,den2,t)

den22=[3 1 0]
subplot(2,2,3)
step(num2,den22,t)

CZ:Cel mai rapid sistem este cel cu nr 1.
