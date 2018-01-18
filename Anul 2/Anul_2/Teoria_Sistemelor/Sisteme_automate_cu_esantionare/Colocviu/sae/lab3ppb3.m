te=0.1;
w=logspace(-1,2);
subplot(2 ,1 ,1)
nyquist([0 0 1],[1 1 0],w)
[num1,den1]=c2dm([0 0 1],[1 1 0],te,'zoh')
subplot(2 ,1 ,2)
dnyquist(num1,den1,te,w)