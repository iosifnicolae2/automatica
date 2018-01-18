//conturul liniilor de nivel ale unei funcţii

x=linspace(-2,2,10);
y=linspace(-2,3,10);
for i=1:10
for j=1:10
z(i,j)=x(i)*exp(-x(i)^2-y(j)^2);
end
end  
contour2d(x,y,z,10) 
