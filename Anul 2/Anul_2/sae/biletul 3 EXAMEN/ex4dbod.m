num=[9];
den=[1 3 0];

[num1,den1]=c2dm(num,den,0.1,'zoh');
[numz,denz]=cloop(num1,den1,-1);
w=logspace(-1,2);
[a,b]=dbode(numz,denz,0.1,w);
plot(log10(w),20*log10(a),log10(w),b)
