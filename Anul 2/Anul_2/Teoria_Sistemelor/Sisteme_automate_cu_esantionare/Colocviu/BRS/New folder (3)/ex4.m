num=[4 22 9];
den=[55 33 0];
[numz,denz]=cloop(num,den,-1);
[num1,den1]=c2dm(numz,denz,0.1,'zoh');
w=logspace(-1,2);
[a,b]=dbode(num1,den1,0.1,w);
plot(log10(w),20*log10(a),log10(w),b)
