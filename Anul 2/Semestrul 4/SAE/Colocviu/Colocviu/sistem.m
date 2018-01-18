function [sys, x0,str, Te] =  sistem (t, x, u, flag)
 x0= [1; 1; 0];
 FI = [-9 -3.25 -1.5; 8 0 0; 0 2 0];
 TAU = [1; 0; 0];
 C = [0 2 0];
 
if flag ==1
    sys = FI*x+TAU*u;
elseif flag ==3 
    sys = C*x
elseif flag ==0
    sys = [3,0,1,3,0,0,0];
    x0=0;
    str = [];
    Te =[];
else sys = [];
end