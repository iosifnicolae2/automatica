function [sys,x0,str,Te]=zoo(t,x,u,flag)
A=[0 -0.25;1 1];
B=[1;1];
C=[0 1];
D=[0];
if flag==1
    sys=A*x+B*u;
elseif flag==3
    sys=C*x;
elseif flag==0
    sys=[0,2,1,1,0,0,0];
    x0=[1,1];
    str=[];
    Te=[];
else
    sys=[];
end