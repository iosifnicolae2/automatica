load ex1.mat

subplot(2,1,1); plot(t,x); title('semnal original');

N = length(x);
fe = 1/Te;
X = fft(x);
Xabs = abs(X)/(N/2);
MagX = Xabs(1,1:N/2+1);

subplot(2,1,2); stem(MagX); title('spectrul Fourier');