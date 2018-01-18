num1=[1];
den1=conv([1 0],[1 1]);
num2=[1];
den2=[1 2];
[num, den]=FEEDBACK(num1, den1, num2, den2, -1);
q = freqs(num, den);
plot(abs(q))
bode(num,den)
pzmap(num,den)