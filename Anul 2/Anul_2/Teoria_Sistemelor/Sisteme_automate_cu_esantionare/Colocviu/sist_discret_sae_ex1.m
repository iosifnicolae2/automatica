function [sys,x0,str,Te]=sist_discret(t,x,u,flag)
fi=[-9 -3.25 1.5;8 0 0;0 2 0];
gama=[1;0;0];
c=[0 2 0];

if flag==2
    sys=fi*x+gama*u;
elseif flag==3
    sys=c*x;
elseif flag==0
    sys=[3,0,1,1,0,0,1];
    x0=[1;1;0];str=[];
    Te=[];
else sys=[];
end