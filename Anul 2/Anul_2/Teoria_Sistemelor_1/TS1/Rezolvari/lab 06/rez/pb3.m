t=[0:.2:2];
w=[0:.2:8];
num=[0 0 0 750];
den=[1 36 205 750];
rad=roots(den)
numred=[0 0 -750/rad(1)];
denred=poly(rad([2 3],1));
tf(numred,denred)
subplot(2,2,1);
q=freqs(num,den,w);
plot(w,abs(q));
subplot(2,2,2);
p=freqs(numred,denred,w);
plot(w,abs(p));
subplot(2,2,3);
step(num,den,t);
subplot(2,2,4);
step(numred,denred,t);