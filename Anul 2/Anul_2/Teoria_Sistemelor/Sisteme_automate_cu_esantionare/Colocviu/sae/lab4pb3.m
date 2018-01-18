a=[0 -0.25 ;1 1];
b=[1;1];
c=[0 1]
x0=[1;1];
d=zeros(1,1)
t=[0:10]
v=ones(1,length(t))
dlsim(a,b,c,d,v,x0)