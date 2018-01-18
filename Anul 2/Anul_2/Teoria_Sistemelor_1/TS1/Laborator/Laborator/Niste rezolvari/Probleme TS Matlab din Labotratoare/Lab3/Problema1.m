t=[0:0.001:0.02];
f(i)=sin(2*pi*50*t(i));
g(i)=f(i)+0.2;
plot(t,f,'g-.',t,g,'r*')

