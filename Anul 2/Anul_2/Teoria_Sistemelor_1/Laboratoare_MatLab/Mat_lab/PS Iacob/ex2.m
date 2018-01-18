load ex1.mat
subplot(2,1,1);
plot(t,x);

te=0.01;

N=length(x);
fe=1/te;
Xabs=abs(x)/(N/2);
magX=Xabs(1,1:N/2+1);
f=[0:N/2]*fe/N;

subplot(2,1,2);
stem(f,magX);
