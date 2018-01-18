z=0.001:0.001:1;
Mv=exp(-pi.*z./sqrt(1.-z.^2));
plot(z,Mv);