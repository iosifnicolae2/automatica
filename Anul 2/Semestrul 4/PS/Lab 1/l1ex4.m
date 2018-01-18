Te=0.01;
t = 0:Te:4;
x = 2*sin(2*pi*5*t)+3*sin(2*pi*10*t)+1*sin(2*pi*15*t);
N = length(x);
fe = 1/Te;
X = fft(x);
Xabs = abs(X)/(N/2);
magX = Xabs(1,1:N/2+1);
f = [0:N/2]*fe/N;
plot(f,magX);   
%%
stem(f,magX)