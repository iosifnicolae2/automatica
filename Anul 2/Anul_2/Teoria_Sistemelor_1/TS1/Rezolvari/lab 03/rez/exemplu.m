x=[1:50]
y=[1:2:50]
[X,Y]=meshgrid(x,y)
z=X.^2+Y.^2+3.*X+Y.^3
mesh(z)