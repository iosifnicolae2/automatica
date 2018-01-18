clear
x=[-5:0.1:5]
for i=1:length(x)
f(i)=x(i)*abs(x(i))/(1+x(i)^2)
end
plot(x,f)