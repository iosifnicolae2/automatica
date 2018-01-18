a=0;
b=%pi;

n=50;
h=(b-a)/n;
I1=0;
I2=0;
I3=0;
for i=1:n
    x(i)=a+i*h;
    x(i+1)=x(i)+h;
    I1=I1+((x(i+1)-x(i))*sin(x(i)));
    I2=I2+(x(i+1)-x(i))*(sin(x(i))+sin(x(i+1)))/2;
    I3=I3+(x(i+1)-x(i))*(sin(x(i))+2*sin((x(i)+x(i+1))/2)+sin(x(i+1)))/4;
end

a=0;
b=2;
n=50;
h=(b-a)/n;
I1=0;
I2=0;
I3=0;
for i=1:n
    x(i)=a+i*h;
    x(i+1)=x(i)+h;
    S3=(x(i+1)-x(i))*((1/(1+x(i))+2*(1/(1+(x(i)+x(i+1))/2))+1/(1+x(i+1)))/4);
    I3=I3+S3;
    S2=(x(i+1)-x(i))*((1/(1+x(i))+1/(1+x(i+1)))/2);
    I2=I2+S2;
    S1=(x(i+1)-x(i))*(1/(1+x(i)));
    I1=I1+S1;
end
