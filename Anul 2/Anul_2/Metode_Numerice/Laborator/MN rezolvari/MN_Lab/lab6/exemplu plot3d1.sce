//Exemplu plot3d1
x=linspace(0,2*%pi,31);
z=cos(x)'*cos(x);
C=hotcolormap(32);
xset("colormap",C)
xset("hidden3d",30)

plot3d1(x,x,z,flag=[1 4 4])
 
