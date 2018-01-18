//cicloida

a=2;
t=linspace(0,4*%pi,100);
x=a*(t-sin(t));
y=a*(1-cos(t)); 
plot2d(x,y,frameflag=4,axesflag=5)
