x=5;
f=sin(x);
a=0;
b=3.14;
n=50;
h=(b-a)/n;
i=0;
for i=0:n-1
    
    x(i)=a+i*h
    x(i+1)=x(i)+h;
end
disp(i);
