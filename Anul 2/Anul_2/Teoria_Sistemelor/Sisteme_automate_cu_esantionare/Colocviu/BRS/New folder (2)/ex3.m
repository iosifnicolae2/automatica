A=[1 1 0.5;0 1 1;0 0 1];
B=[1 0;0 0;0 1];
C=[1 0 0;0 0 1];
D=[0 0;0 0];
[a,b,c,d]=c2dm(A,B,C,D,0.1,'zoh');
Ct=ctrb(a, b);
Ob=obsv(a, c);
rank(Ct)
rank(Ob)
  
