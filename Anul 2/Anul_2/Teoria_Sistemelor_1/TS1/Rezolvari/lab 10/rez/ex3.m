A=[-1 -0.5;1 0];
B=[0.5;0];
C=[1 0];
D=0;
t=[0:0.05:10];
%intrare treapta:
u1=tf(1,[1 0])
[y1,x1]=step(A,B,C,D,u1,t)

%intrare Dirac
[y2,x2]=impulse(A,B,C,D,1,t)
