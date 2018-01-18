num1=[25];
den1=[1 1 0];
num2=[1];
den2=[1 10];

num=conv(num1,den1);
den=conv(num2,den2);

[mag,phase,w]=bode(num,den);



plot(log10(w),20*log10(mag),log10(w),phase);
