Te=0.01;
t=[0;0.01;20]
a=2;
f=15;
a1=3;
f1=20;
w=2*pi*f;
w1=2*Pi*f1;
x=a*sin(w*t)+a1*sin(w1*t);
x=2*sin(2*pi*15*t)+3*sin(2*pi*20*t);
plot(x,t);
save c3.m
