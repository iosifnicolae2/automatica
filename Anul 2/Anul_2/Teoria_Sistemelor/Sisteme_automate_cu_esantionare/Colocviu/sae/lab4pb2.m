a=[0 1 0 0;0 0.18 2.67 0;0 0 0 1;0 0.45 31.18 0];
b=[0;1.8;0;4.5];
c=[1 0 0 0;0 0 0 1]
d=zeros(2,1)
[A,B,C,D]=c2dm(a,b,c,d,0.01,'zoh')
ct=ctrb(A,B);
rank(ct)
ob=obsv(A,C);
rank(ob)