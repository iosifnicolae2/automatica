num=[0 0 9];
den=[1 7 0];
w=0:0.01:4;
[num1z,den1z]=c2dm(num,den,0.1,'zoh');
[numz,denz]=cloop(num1z,den1z);
h=freqz(numz,denz,w);

num2=[0,9,0];
den2=[1,7,0];
[num2z,den2z]=c2dm(num2 ,den2,0.1,'zoh');
[numz2,denz2]=cloop(num2z,den2z);

figure
subplot(2,1,1); plot(h,w)
subplot(2,1,2); dstep(numz2,denz2)
