A=[0 1 0;
   0 1 1;
   -1 -2 -3]
B=[10;
    0;
    0]
C=[1 0 0]
D=[0]
[num,den]=ss2tf(A,B,C,D)
tf(num,den)
I=eye(3)
syms s;
F=inv(s*I-A)
T=ilaplace(F)
ctrb(A,B)
obsv(A,C)