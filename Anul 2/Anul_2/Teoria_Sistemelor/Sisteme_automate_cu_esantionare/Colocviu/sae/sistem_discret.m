function [sys,x0,str,te]=sistem_discret(t,x,u,flag,a,b,c,d)

if flag==2
    sys=a*x+b*u;
elseif flag==3
    sys=c*x;
elseif flag==0
    sys=[0,2,1,1,0,0,1];
    x0=0;str=[];
    te=[0.1 0];
else sys=[];end