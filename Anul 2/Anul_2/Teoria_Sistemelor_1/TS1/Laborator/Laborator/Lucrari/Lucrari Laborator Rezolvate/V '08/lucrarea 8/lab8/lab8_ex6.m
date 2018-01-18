t=[0:0.05:4];
A=[0 1 0 ; 0 0 1 ; -6 -11 -6];
B=[1; 1; 1];
C=[1 1 0];
D=[0];
U=ones(1,length(t));
xo=[1;0.5;-0.5];
[y,x]=lsim(A,B,C,D,U,t);
plot(t,y,t,x);
[y,x]=lsim(A,B,C,D,U,sin(2*3.14*t));
plot(t,y,t,x)