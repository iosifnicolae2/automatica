i=[0:0.001:0.02]
x=2*pi*50*i
y=sin(x)
y2=y+0.2
plot(i,y,'g -.',i,y2,'* r')
