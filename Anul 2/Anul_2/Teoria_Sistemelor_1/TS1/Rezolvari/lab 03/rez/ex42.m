clear
n=[0:20]
for i=1:length(n)
f(i)=sin(2*pi/10*n(i));
end
stem(n,f)