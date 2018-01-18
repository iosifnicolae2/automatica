//reperzentarea grafica a hiperbolei 
a=2;b=1;
t=linspace(-%pi/4,%pi/4,100);
x=a*cosh(t);
y=b*sinh(t);
plot2d(x,y,frameflag=4,axesflag=5) 

