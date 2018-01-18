w=[0:0.02:8]

num=[10];
den=[1 4 4];

[mag,phase]=bode(num,den,w);



subplot(2,1,1);
plot(w,20*log10(mag))

subplot(2,1,2);
 
plot(w,phase)