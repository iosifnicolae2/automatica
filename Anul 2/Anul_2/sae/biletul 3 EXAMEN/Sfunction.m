function [sys,x0,str,Te]=sistem_continuu(t,x,u,flag)
Fi=[0.43 -1.27;0.14 0.85];
Gama=[0.14;0.01];
C=[0 9];
D=[0];

if flag==2
    sys=Fi*x+Gama*u;

elseif flag==3
    sys=C*x;

elseif flag==0
    sys=[0,2,1,1,0,0,1];
    x0=0;
    str=[];
    Te=0;

else sys=[];
end