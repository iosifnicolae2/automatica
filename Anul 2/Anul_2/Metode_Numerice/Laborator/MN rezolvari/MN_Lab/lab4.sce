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
    I1=I1+((x(i+1)-x(i))*integrala(x(i)));
    I2=I2+(x(i+1)-x(i))*(integrala(x(i))+integrala(x(i+1)))/2;
    I3=I3+(x(i+1)-x(i))*(integrala(x(i))+2*integrala((x(i)+x(i+1))/2)+integrala(x(i+1)))/4;
end

disp("metoda dreptunghiurilor:")
disp(I1)
disp("metoda trapezului :")
disp(I2)
disp("metoda simpson:")
disp(I3)

//disp("metoda integrate:")
//disp(integrate(0,%pi,sin(x))

function[r]=integrala(y)

r=sin(y);

endfunction

