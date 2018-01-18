A=[0 1 0;0 1 1; -1 -2 -3];
B=[10;0;0];
C=[1 0 0];
D=[0]
[num,den]=ss2tf(A,B,C,D,1)
printsys(num,den)