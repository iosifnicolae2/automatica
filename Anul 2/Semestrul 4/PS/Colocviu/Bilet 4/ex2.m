load ex1.mat

%bucata de cod responsabila pentru spectru Fourier
N = length(x);           %lungimea semnalului
fe = 1/Te;               %se calculeaza frecventa
X = fft(x);              %transformata Fourier a semnalului
Xabs = abs(X)/(N/2);     %modulul imprati
magX = Xabs(1,1:N/2+1);
f = [0:N/2]*fe/N;

plot(magX)
