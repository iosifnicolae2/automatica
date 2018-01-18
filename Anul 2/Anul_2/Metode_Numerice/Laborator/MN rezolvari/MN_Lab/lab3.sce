x=[1 2 3 4 5 6 7 8 9 10];
y=[9 8  5 8 4 6 2 3 5 1];
n=10;
z=[1.25, 5.63 ,9.8 ,4.24 ,7.31];

for i=0:4 

     for j=0:n
     if z(i)>x(j)& z(i)<x(j+1) 
    
    k=j;
    
end      
end
 
     for i=0:4   
        rez=rez[k]+(z(i)-x[k])/x[k+1]-x[k]
     
      end
     
  end
  disp(rez);
plot(x,y,'r--*');
plot(z,rez,'b--*')
