Te=0.001;
t=0:Te:4;
x=3*sin(2*pi*5*t)+6*sin(2*pi*10*t)+4*sin(2*pi*8*t)+8*sin(2*pi*15*t)+1*sin(2*pi*9*t);
subplot(2,1,1);
plot(t,x);
subplot(2,1,2);
t = 0:.0002:0.1;
x = SQUARE(2*pi*30*t);
plot(t,x)