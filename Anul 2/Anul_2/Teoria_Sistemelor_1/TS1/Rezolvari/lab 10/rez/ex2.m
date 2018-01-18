A=[0 1 0;0 1 1;-1 -2 -3];
B=[10;0;0];
C=[1 0 0];
D=0;
I=eye(3,3);

ft=ss2tf(A,B,C,D)
Ms=expm(A)
syms s;
Mf=inv(s*I-A)
cont=ctrb(A,B)
observab=obsv(A,C)