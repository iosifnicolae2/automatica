load semnal3.mat
te=0.01;
t=0:te:3;
N=length (x);
fe=1/Te;
X=fft(x);
Xabs=abs(X)/(N/2);
magX=Xabs(1,1:N/2+1);
f=[0:N/2]*fe/N;
stem(f,magX);