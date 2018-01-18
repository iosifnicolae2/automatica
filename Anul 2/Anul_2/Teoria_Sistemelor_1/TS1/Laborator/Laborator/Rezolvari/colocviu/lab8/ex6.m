A=[0 1;
  -25 -4]
B1=[1; 1]
B2=[0 ;1]
C1=[1 0]
C2=[0 1]
D=0;
[num,den]=ss2tf(A,B1,C1,D)
tf(num,den)
[num,den]=ss2tf(A,B1,C2,D)
tf(num,den)
[num,den]=ss2tf(A,B2,C1,D)
tf(num,den)
[num,den]=ss2tf(A,B2,C2,D)
tf(num,den)