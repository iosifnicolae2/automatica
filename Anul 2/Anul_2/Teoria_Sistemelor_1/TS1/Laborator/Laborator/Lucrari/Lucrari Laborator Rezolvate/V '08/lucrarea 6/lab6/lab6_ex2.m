w=0:0.01:3;
t=0:0.02:4;
numarator=10;
numitor=[1 4.5 9 10];
g=abs(freqs(numarator,numitor,w));
a=step(numarator,numitor,t);
subplot(2,2,1);
plot(t,a)
subplot(2,2,2);
plot(w,g)