A=[0 1 0;0 1 1;-1 -2 -3];
B=[10;0;0];
C=[1 0 0];
D=[0];
[num,den]=ss2tf(A,B,C,D,1)
tf(num,den)
syms s;
I=eye(3,3);
Y=inv(s*I-A)
syms t;
expm(A*t)
[e]=ctrb(A,B);
[f]=obsv(A,C);
r=rank(e)
r1=rank(f)
q=det(e)
w=det(f)