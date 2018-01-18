Te = 0.001;
t = 0:Te:3;
x = 2*sin(2*pi*50*t)+3*sin(2*pi*100*t)+1*sin(2*pi*150*t);
%semnalul este generat astfel, vezi mai jos spectrul
subplot(211)
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
subplot(212)
plot(f,magX);
title ('Spectrul Fourier al semnalului')
