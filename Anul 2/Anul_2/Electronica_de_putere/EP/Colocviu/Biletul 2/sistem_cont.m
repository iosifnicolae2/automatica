function [sys,x0,str,Te]=sistem_continuu(t,x,u,flag)
A=[-6 0;1 0];
B=[1;0];
C=[0 7];
D=[0];
if flag==1
    sys=A*x+B*u;

elseif flag==3
    sys=C*x;

elseif flag==0
    sys=[2,0,1,1,0,0,0];
    x0=0;str=[];
    Te=[];

else sys=[];
end
