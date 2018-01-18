t=[0:0.001:7];
y0=0.15;
w=sqrt(2);
z1=3/(2*sqrt(2));
z2=1/(2*sqrt(2));
f=acos(z1);
for i=1:length(t)

yt1(i)=y0/sqrt(1-z1^2)*exp(-z1*w*t(i))*sin(w*sqrt(1-z1^2)*t(i)+f);
end
plot(t,yt1)
