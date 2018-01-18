function [z]=functie1(x,y)
if 0<=x-y & x-y<=10
   z=x^3+y^3
elseif x-y<0 & y>=0
    z=x*x+y*y
else
      z=(x-y)^2
end