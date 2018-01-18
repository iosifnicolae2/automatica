function f1(x,y)
if ((x-y)>=0)&((x-y)<=10)
    a=x^3+y^3
elseif ((x-y)<0)&(y>=0)
    a=x^2+y^2
else a=(x-y)^2
end
end