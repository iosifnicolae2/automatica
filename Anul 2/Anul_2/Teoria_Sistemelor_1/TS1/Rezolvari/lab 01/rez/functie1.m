function[a,b,c]=functie1(x,y)
x=n
y=n
if (x-y>=0)&(x-y<=10)
    a=x*x*x+y*y*y
else
    if(x-y<0)&(y>=0)
        b=x*x+y*y
    else
        c=(x-y)*(x-y)
    end
end

