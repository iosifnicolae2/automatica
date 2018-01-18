Te=0.01;
fe=1/Te;
t = 0:Te:4;
x = square(2*pi*30*t);
X = fft(x);
N = length(x);
Xabs = abs(X)/(N/2);
magX = Xabs(1,1:N/2+1);
f = [0:N/2]*fe/N;
plot(f,magX) 