a=[0 1 0;0 0 1;-6 -11 -6];
b=[1;1;1];
c=[1 1 0];
d=[0];
x0=[1;0.5;-0.5];
t=[0:0.05:4];
u=sin(2*pi*t);
[y,x]=step(a,b,c,d,1,t);
subplot(2,1,1)
lsim(a,b,c,d,u,t,x0)
subplot(2,1,2)
plot(y)