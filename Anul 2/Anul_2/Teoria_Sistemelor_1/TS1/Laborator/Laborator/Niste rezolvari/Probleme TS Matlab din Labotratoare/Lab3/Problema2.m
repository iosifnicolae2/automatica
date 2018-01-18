x=[0:0.01:10];
for i=1:length(x);
f(i)=10^x(i);
end
semilogy(x,f)
