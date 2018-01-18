function[z]=functie1(x,y)
if x-y>=0 & x-y<=10 z=x^3+y^3
elseif x-y<0 & y>=0 z=x^2+y^2
else z=(x-y)^2
end
end