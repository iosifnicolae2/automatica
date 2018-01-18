num1=[25];
den1=[1 1 0];

num2=[1];
den2=[1 10];

num=conv(num1,num2);
den=conv(den1,den2);

[mag,phase,w]=bode(num,den);

plot(w,20*log(phase));
