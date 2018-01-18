Te=0.001;
t=0:Te:3;
f=10;
a=2;
w=2*pi*f;
x=a*sin(w*t);
plot(t,x)
save l1e1.mat t x