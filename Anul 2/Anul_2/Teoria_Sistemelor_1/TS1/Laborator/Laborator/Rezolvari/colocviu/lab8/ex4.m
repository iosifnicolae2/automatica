A=[0 1 0;
   0 0 1;
  -6 -11 -6]
B=[1;
   1;
   1]
C=[1 1 0]
D=0
X0=[1;
    0.5;
    -0.5]
t=[0:0.05:4]
U=ones(1,length(t))
[x,y]=lsim(A,B,C,D,U,t,X0)
subplot(2,1,1)
plot(t,x,t,y)
U=sin(2*pi*t)
[x,y]=lsim(A,B,C,D,U,t,X0)
subplot(2,1,2)
plot(t,x,t,y)