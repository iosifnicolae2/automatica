
A=[0 -0.25; 1 1];
B=[1;1];
C=[0 1];
D=0;
t=0:10;
U=ones(1,length(t));
x0=[1;1];
dlsim(A,B,C,D,U,x0)