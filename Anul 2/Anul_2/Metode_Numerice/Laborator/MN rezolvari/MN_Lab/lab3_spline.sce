
n=10;
m=50;
x=[1 2 3 4 5 6 7 8 9 10];
y=[9 8 5 8 4 6 2 3 5 1];
k=2;

for i=1:n
    if(i>1)
        p1(i)=(y(i)-y(i-1))/(x(i)-x(i-1))
    else
        p1(i)=(y(i+1)-y(i))/(x(i+1)-x(i)) 
    end

    if(i<n)
        p2(i)=(y(i+1)-y(i))/(x(i+1)-x(i)) 
    else
        p2(i)=(y(i)-y(i-1))/(x(i)-x(i-1)) 
    end

alfa1(i)=atan(p1(i));
alfa2(i)=atan(p2(i));
alfa(i)=(alfa1(i)+alfa2(i))/2;

xd(i)=k*cos(alfa(i));
yd(i)=k*sin(alfa(i));

end

for i=1:n-1
    
    ax=-2*x(i+1)+xd(i+1)+xd(i)+2*x(i);
    bx=3*x(i+1)-xd(i+1)-2*xd(i)-3*x(i);
    cx=xd(i);
    dx=x(i);
    
    ay=-2*y(i+1)+yd(i+1)+yd(i)+2*y(i);
    by=3*y(i+1)-yd(i+1)-2*yd(i)-3*y(i);
    cy=yd(i);
    dy=y(i);

    for j=1:50
        t=j/50;
        
        xt(j)=ax*t^3+bx*t^2 +cx*t+dx;
        yt(j)=ay*t^3+by*t^2 +cy*t+dy;
    end
    
plot(x,y,'b-o');
plot(xt,yt,'*r');    
end






