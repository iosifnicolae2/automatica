t=0:0.2:2;
w=0:0.2:8;
numarator=[750];
numitor=[1 36 205 750];
numarator2=[25];
numitor2=[1 3+4j 3-4j];
roots(numitor);
y=step(numarator,numitor,t);
z=abs(freqs(numarator,numitor,w));
y1=step(numarator2,numitor2,t);
z1=abs(freqs(numarator2,numitor2,w));
subplot(2,2,1);
plot(t,y);
subplot(2,2,2);
plot(w,z)
subplot(2,2,3);
plot(t,y1)
subplot(2,2,4);
plot(w,z1)
