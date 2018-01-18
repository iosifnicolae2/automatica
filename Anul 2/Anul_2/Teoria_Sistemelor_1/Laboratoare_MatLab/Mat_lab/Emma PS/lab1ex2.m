x = square(4*pi*30*t); 
Te = 0.01;
N = length(x);
fe = 1/Te;
X = fft(x);
Xabs = abs(X)/(N/2);
magX = Xabs(1,1:N/2+1);
f = [0:N/2]*fe/N;
stem(f,magX);



