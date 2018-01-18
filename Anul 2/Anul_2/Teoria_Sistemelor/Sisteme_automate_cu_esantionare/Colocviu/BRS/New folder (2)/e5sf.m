function [sys,x0,str,Te]=e5ssf(t,x,u,flag)
A=[];
B=[];
C=[];
if flag==1
    sys=A*x+B*u;
elseif flag==3
    sys=C*x;
elseif flag==0
    sys=[0,2,1,1,0,0,0];
    x0=0;
    str=[];
    Te=[];
else 
    sys=[];
end