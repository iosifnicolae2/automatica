e=[0.001:0.02:1];
pi=3.14;
mv=exp((-pi.*e)./sqrt(1-e.^2));
plot(mv,e)