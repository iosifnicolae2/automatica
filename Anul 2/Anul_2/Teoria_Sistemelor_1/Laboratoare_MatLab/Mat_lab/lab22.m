a=[0 1 0 ; 0 1 1 ; -1 -2 -3];
b=[10;0;0];
c=[1 0 0];
d=[0];
[num,den]=ss2tf(a,b,c,d,1)
s=sym('s','real');
i=eye(3,3)
s=inv(s*i-a)
ctrb(a,b)
obsv(a,c)