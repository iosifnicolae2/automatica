function y=f(t,y)
    y=10*sin(100*t)-y/0.5;
endfunction
a=0;
b=1;
y(1)=0;
n=100;
h=(b-a)/n;
for i=1:n-1
    t(i)=a+i*h;
    k1=(f(t(i),y(i)));
    k2=f(t(i)+h/2,y(i)+k1*h/2);
    k3=f(t(i)+h/2,y(i)+k2*h/2);
    k4=f(t(i)+h,y(i)+k3*h);
    y(i+1)=y(i)+h/6*(k1+2*k2+2*k3+k4);
end
plot(y)





