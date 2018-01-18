function [sys,x0,str,te]=budy(t,x,u,flag)
R=2;
L=0.05;
a=[-R/L];
b=[1/L];
c=[a];

if flag==1 
     sys=a*x+b*u
elseif flag==3
    sys=c*x
elseif flag==0
    sys=[1,0,1,1,0,0,0];
    x0=0;
    str=[];
    te=[];
else
    sys=[]
end
