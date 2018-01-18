function [sys, x0,str, Te] =  sistem_continuu (t, x,u,flag,a,b,c)
% a= [-2/0.05];
% b=1/0.05;
% c =1;
if flag ==1
    sys = a*x+b*u;
elseif flag ==3 
    sys = c*x
elseif flag ==0
    sys = [1,0,1,1,0,0,0];
    x0=0;
    str = [];
   Te =[];
else sys = [];
end