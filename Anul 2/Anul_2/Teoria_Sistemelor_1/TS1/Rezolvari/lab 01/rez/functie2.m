function[a,b,c]=functie2(x,y)
if (x-y>=0)&(x-y<=10)
    a=x*x*x+y*y*y
elseif (x-y<0)&(y>=0)
        b=x*x+y*y
else
        c=(x-y)*(x-y)
 
end