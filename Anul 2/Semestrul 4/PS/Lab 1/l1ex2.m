Te=0.01;
t = 0:Te:4;
x = SQUARE(2*pi*30*t);
N=length(x);
fe=1/Te;
X=fft(x);
Xabs=abs(X)/(N/2);
magX = Xabs(1,1:N/2+1);
f = [0:N/2]*fe/N;
stem(f,magX) 

save Lab1Ex02_semnal1.mat t x
%salveaza in fisierul semnal.mat valorile momentelor de timp la care se face esantionarea si valorile prelevate ale semnalului
save Lab1Ex02_semnal2.mat Te x
%salveaza in fisierul semnal.mat perioada de esantionare si valorile prelevate ale semnalului