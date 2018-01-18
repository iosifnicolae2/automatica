A=[0 1 0;0 0 1;-6 -11 -6];
B=[1;1;1];
C=[1 1 0];
D=0;
t=[0:0.05:4];
%intrare treapta    
u1=tf(1,[1 0]);
[y1,x1]=step(A,B,C,D,u1,t)
%intrare sin(2*pi*t)
u2=sin(2*pi*t);
[y2,x2]=lsim(A,B,C,D,u2,t)