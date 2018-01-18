function [r]=g(x,y)
if ((x+y)>=0 && (x+y)<=2)
    r=(x+y)^2;
else r=x^2+y^2;
end
end