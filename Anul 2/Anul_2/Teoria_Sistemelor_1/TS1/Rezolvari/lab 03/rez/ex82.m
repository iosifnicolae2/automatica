clear
x=[-2:0.01:2];
y=x;
[X,Y]=meshgrid(x,y);
for i=1:length(x)
for j=1:length(y)    
   z(i,j)=X(i)^2-Y(j)^2;
end
end
mesh(z)