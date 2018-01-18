//exemplu countour
t=%pi*[-10:10]/10;
deff("[z]=surf(x,y)","z=sin(x)*cos(y)"); z=feval(t,t,surf);
rect=[-%pi,%pi,-%pi,%pi,-1,1];
contour(t,t,z,10,35,45," ",[0,1,0],rect)
xset("fpf","%.2f") ;
contour(t,t,z,10,flag=[0,1,0],ebox=rect)
 
