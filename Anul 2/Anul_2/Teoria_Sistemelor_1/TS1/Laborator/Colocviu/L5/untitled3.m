t=[0:0.01:10];
num1=[9];
den1=[1 6 0];
[num, den]=cloop(num1, den1, -1)
step(num, den, t)