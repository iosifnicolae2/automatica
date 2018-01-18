num=[1 1];
den=[0.1 1];

te=0.1;
w=logspace(-1,2)
[a,f]=bode(num,den,w)
zgrid
subplot(2,1,1)
plot(log10(w),20*log10(a),log10(w),f)
[num1,den1]=c2dm(num,den,te,'zoh')
 subplot(2,1,2)
 [b,d]=dbode(num1,den1,te,w)
 plot(log10(w),20*log10(b),log10(w),d)
