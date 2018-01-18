function [sys, x0,str, Te] =  sistem_discret (t, x, u, flag)
fi = [0 -0.25; 1 1];
gama = [1;1];
c = [0 1];
if flag ==2
    sys = fi*x+gama*u;
elseif flag ==3 
    sys = c*x
elseif flag ==0
    sys = [0,2,1,1,0,0,1];
    x0=0;
    str = [];
   Te = 0.1;
else sys = [];
end