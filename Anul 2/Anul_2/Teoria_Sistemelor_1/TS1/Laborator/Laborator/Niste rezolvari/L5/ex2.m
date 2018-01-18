t=[0:0.01:10];
num1=[9];
den1=[1 6 0];
[num, den]=cloop(num1, den1, -1)
step(num, den, t)
z=1;
w=3;
mv=exp((-pi.*z)/sqrt(1-z.*x));
ts=4/z*w;
ts2=5/z*w;
errortf(num,den);