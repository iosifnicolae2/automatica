den1=[1 3 0];
num1=[150 180 30];
den2=[0.01 0.1 1];
num2=[20 20 20];
dena=conv(den1,den2);
den12=[1 2 0];
den22=den2;
denb=conv(den12,den22);
bode(num1,dena);
bode(num2,denb);
w=logspace(-3,3);
w=logspace(-2,2);
[m,f]=bode(num1,dena,w)
margine(num1,dena)