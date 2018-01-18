x=[1 2 3 4 5 6 7 8 9 10];
y=[9 8  5 8 4 6 2 3 5 1];

z=[1.25 5.63 9.8 4.24 7.31];

     for i=1:5
     for j=1:n
     if z(i)>x(j)&z(i)<x(j+1) 
        
      s(i)=y(j)+((z(i)-x(j))/(x(j+1)-x(j))*(y(j+1)-y(j)));
        
      end
      end
     
  end
disp(s);
plot(x,y,'b-o');
plot(z,s,'r*');


