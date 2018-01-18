Te = 0.01;
t = 0:Te:3;
x = 2*sin(2*pi*5*t)+3*sin(2*pi*10*t)+1*sin(2*pi*15*t);
%semnalul este generat astfel, vezi mai jos spectrul
subplot(311)
plot(t,x)
title ('Semnalul inregistrat')

N = length(x);
%numarul de esantioane prelevate
fe = 1/Te;
%frecventa de esantionare
%urmatoarea secventa construieste si prezinta grafic spectrul Fourier
X = fft(x);
Xabs = abs(X)/(N/2);
magX = Xabs(1,1:N/2+1);
f = [0:N/2]*fe/N;
subplot(312)
stem(f,magX);
title ('Spectrul Fourier al semnalului')


xx=ifft(X);
subplot(313)
plot(t,xx)
title('Semnalul obtinut prin transformata Fourier inversa')