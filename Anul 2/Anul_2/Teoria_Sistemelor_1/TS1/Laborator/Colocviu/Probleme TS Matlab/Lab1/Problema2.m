function[nr]=functie1(x, y)
if 0<=(x-y) && (x-y)<=10;
    nr=x^3+y^3;
elseif x-y<0 & y>=0;
    nr=x^2+y^2;
else 
    nr=(x-y)^2;
end