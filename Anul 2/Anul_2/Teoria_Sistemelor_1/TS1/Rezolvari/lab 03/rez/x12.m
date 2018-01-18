clear
x=[0:0.1:10]
for i=1:length(x)
    f(i)=10^x(i);   
end
  semilogx(x,f)