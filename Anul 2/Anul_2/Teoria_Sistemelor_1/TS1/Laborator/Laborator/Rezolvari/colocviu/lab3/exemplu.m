x=[-1:0.1:1]
y=[-2:0.1:2]
[X,Y]=meshgrid(x,y)
z=X.^3+(Y/2).^3
subplot(1,2,1)
contour(z)
subplot(1,2,2)
mesh(z)