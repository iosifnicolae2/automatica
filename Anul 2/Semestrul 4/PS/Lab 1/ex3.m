open semnal1.mat

X = fft(x);
N = length(x);
Xabs = abs(X)/(N/2);
magX = Xabs(1,1:N/2+1);
f = [0:N/2]*fe/N;
plot(f,magX) 