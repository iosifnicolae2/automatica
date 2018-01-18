w=[0:0.01:4];
te=0.1;
[num1,den1]=cloop([0 0 9],[1 3 0],-1)
subplot(2,2,1)
[a]=freqs(num1,den1,w);
plot(w,a);
[num,den]=c2dm([0 0 9],[1 3 0],te,'zoh')
[num2,den2]=cloop(num,den,-1)
subplot(2,2,2)
[b]=freqz(num2,den2,w);
plot(w,abs(b))
