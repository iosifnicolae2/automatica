function [sys, x0,str, Te] =  sistem_discret (t, x, u, flag)

 FI = [-9 -3.25 -1.5; 8 0 0; 0 2 0];
 TAU = [1; 0; 0];
 C = [0 2 0];
 
if flag ==2
    sys = FI*x+TAU*u;
elseif flag ==3 
    sys = C*x
elseif flag ==0
    sys = [0,3,1,1,0,0,1];
    x0= [1; 1; 0];
    str = [];
   Te =.1;
else sys = [];
end