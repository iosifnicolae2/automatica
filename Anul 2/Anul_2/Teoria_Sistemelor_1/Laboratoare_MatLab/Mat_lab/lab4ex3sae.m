t=[1:10]
fi=[0 -0.25; 1 1];
sigma=[1; 1];
x0=[1 ; 1];
c=[0 1];
d=[0];
u=ones(1,10);


dlsim(fi,sigma,c,d,u,x0)