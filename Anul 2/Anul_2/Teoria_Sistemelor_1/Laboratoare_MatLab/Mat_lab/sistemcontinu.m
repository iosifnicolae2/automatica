function [sys,x0,str,te]=sistemcontinuu(t,x,u,flag)
a=[0 1;-6 -11];
b=[1;1];
c=[1 1];

if flag==1 
     sys=a*x+b*u
elseif flag==3
    sys=c*x
elseif flag==0
    sys=[2,0,1,1,0,0,0]
    x0=0;
    str=[]
    te=[]
else
    sys=[]
end

