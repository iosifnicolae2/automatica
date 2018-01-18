z=[0.001:0.001:1];
for i=1:length(z) 
mv(i)=exp((-pi*z(i))/sqrt(1-(z(i)^2)));
end
plot(z,mv)
