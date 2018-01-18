Fi=[0 -0.25;1 1];
Gama=[1;1];
C=[0 1];
D=[0];
x0=[1;1];;
t=0:0.1:10;
u=ones(1,length(t));
dlsim(Fi,Gama,C,D,u,x0);