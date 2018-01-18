num1=[150];
num2=[1 0.2];
num3=[1 1];
den1=[1 0];
den2=[1 3];
den3=[0.01 0.1 1];
num=conv(num1,conv(num2,num3));
den=conv(den1,conv(den2,den3));

num11=[20];
num22=[1 1 1];
den11=[1 0];
den22=[1 2];
den33=[0.01 0.1 1];
num4=conv(num11,num22);
den4=conv(den11,conv(den22,den33));
bode(num,den);hold on
bode(num4,den4);

