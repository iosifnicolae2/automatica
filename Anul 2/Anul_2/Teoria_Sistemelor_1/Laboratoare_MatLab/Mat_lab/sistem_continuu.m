function [sys,x0,str,Te] = sistem_continuu(t,x,u,flag)
A = [0 1; -25 -4];
B = [1 1; 0 1];
C = [0 1; 0 1];
if flag==1
    sys = A*x + B*u;
elseif flag==3
    sys = C*x;
elseif flag==0
    sys = [2,0,2,2,0,0,0];
    x0 = 0;str = [];
    Te = [];
else
    sys = [];
end