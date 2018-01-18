numg=[750];
deng=[1 36 205 750];
p=roots(deng)
t=[0:0.2:2];
w=[0:0.2:8];
z=freqs(numg,deng,w);
subplot(2,2,1);
plot(w,abs(z));
subplot(2,2,2);
step(numg,deng,t);
a=[1 3+4*i]
b=[1 3-4*i]
deng1=conv(a,b)
numg1=[25]
z1=freqs(numg1,deng1,w);
subplot(2,2,3);
plot(w,abs(z1));
subplot(2,2,4);
step(numg1,deng1,t);
