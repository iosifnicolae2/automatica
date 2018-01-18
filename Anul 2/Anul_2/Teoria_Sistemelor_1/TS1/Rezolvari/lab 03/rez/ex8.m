x=[-2:0.01:2];
y=x;
[X,Y]=meshgrid(x,y);
z=X.^2-Y.^2;
mesh(z)