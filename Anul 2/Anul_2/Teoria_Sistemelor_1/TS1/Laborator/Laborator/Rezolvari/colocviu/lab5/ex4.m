zi=[0.001:0.001:1]
mv=exp(-pi*zi./sqrt(1-zi.^2))*100
plot(zi,mv)