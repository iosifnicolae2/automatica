Te=0.01;
t = 0:Te:4;
x = sin(2*pi*5*t)+sin(2*pi*10*t)+sin(2*pi*15*t)+sin(2*pi*7*t)+sin(2*pi*8*t);

xsq = square(2*pi*30*t);
subplot(2,1,1); plot(t,x);
subplot(2,1,2); plot(t, xsq);

save semnal1.mat


