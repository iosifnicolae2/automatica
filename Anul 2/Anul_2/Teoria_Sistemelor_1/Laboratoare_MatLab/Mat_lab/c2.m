load c1.m
plot(x,t);
N=lenght(x);
fe=1/Te;
f=fft(x);
xabs=abs(x)/N+2;
magx=xabs(1,1:N/2+1);
f=[0:n/2]*f/N;
stem(f,magx);