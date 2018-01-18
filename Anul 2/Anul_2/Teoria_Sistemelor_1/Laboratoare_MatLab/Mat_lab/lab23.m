a=[-1 -0.5;1 0];
b=[0.5;0];
c=[1 0]
d=[0]
t=[0:0.5:10];
[y,x]=step(a,b,c,d,1,t)
[v,w]=impulse(a,b,c,d,1,t)
subplot(2,1,1)
plot(y)
subplot(2,1,2)
plot(v)