 w=0:0.01:3;
numarator=4;
numitor=[1 2 4];
x=abs(freqs(numarator,numitor,w));
plot(w,x)