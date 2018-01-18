w=[0:0.02:8]

num=[10];
den=[1 4 4];

[mag,phase]=bode(num,den,w);

plot(w,20*log(mag))

plot(w,phase)