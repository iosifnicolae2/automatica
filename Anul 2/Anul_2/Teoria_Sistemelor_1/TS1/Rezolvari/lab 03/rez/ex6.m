x=[-5:0.1:5]
f=x.*abs(x)./(1+x.^2)
plot(x,f)