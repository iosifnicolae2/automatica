a=[1 1 0.5; 0 1 1;0 0 1];
b=[1 0;0 0;0 1];
c=[1 0 0;0 0 1];
d=[0 0;0 0];
[A B C D]=c2dm(a,b,c,d,0.1,'zoh');
ct=ctrb(A,B)
obs=obsv(A,C)
