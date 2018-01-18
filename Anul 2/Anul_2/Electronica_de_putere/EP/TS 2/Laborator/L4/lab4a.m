R=20;
L=0.01;
C=0.01;

wn=sqrt(1/(L*C));
z=R/(2*L*wn);

num=[2*z*wn 0];
den=[1 2*z*wn wn*wn];

subplot(2,2,1)
step(num,den);
subplot(2,2,2)
impulse(num,den);
subplot(2,2,3)
bode(num,den);
subplot(2,2,4)
%w=0:0.1:5000;
[m,f,w]=bode(num,den,w);
plot(w,m)
