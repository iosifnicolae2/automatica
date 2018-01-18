zita=[0.001:0.001:1];
mv=exp(-(pi.*zita)./sqrt(1.-zita.^2));
plot(zita,mv)