
t=[0:.02:2];
w=5;
z=0.6;
num=[0 10 25]
den1=[0.16 1]
den2=[1 6 25]
den=conv(den1,den2)
step(num, den)