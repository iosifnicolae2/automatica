t=[0:0.2:2];
w=[0:0.2:8];
num=[750];
den=[1 36 205 750];
p=roots(den)
num1=[25];
den1=[1 6 25];
c=freqs(num,den,w);
subplot(2,2,1);
plot(w,abs(c));
n=step(num,den,t);
subplot(2,2,2);
plot(t,n);
v=freqs(num1,den1,w);
subplot(2,2,3);
plot(w,abs(v));
m=step(num1,den1,t);
subplot(2,2,4);
plot(t,m);

