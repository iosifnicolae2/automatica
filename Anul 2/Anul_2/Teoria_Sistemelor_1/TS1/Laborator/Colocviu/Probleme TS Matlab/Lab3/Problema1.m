t=[0:0.001:0.02];
for i=1:length(t)
f(i)=sin(2*pi*50*t(i));
g(i)=f(i)+0.2;
end
subplot(312)
plot(t,f,'r*')

plot(t,g,'r')

