A=[0 1 0 0;0 0.18 2.67 0;0 0 0 1;0 0.45 31.18 0];
B=[0;1.8;0;4.5];
C=[1 0 0 0;0 0 1 0];
D=[0;0];
Te=0.01;
[num,den]=ss2tf(A,B,C,D)
[ad,bd,cd,dd]=c2dm(A,B,C,D,Te,'zoh')
M1=obsv(ad,cd)
M2=ctrb(ad,bd)
rank(M2)
