Te=0.01;
A=[ 0 1 0 0; 0 0.18 2.67 0; 0 0 0 1; 0 0.45 31.18 0];
B=[0; 1.8; 0; 4.5];
C=[1 0 0 0; 0 0 1 0];
D=[0; 0];
%Co=ctrb(A, B)
%Ob=obsv(A, C)

[Aa,Bb,Cc,Dd] = c2dm(A,B,C,D,Te,'zoh');
rank(ctrb(Aa, Bb))
rank(obsv(Aa, Cc))

