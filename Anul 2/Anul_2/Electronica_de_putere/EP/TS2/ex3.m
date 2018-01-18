t=0:0.2:2;
w=0:0.2:8;
num= 750;
den=[1 36 205 750];
pzmap(num, den);
G=tf(num, den)
M=freqs(num,den,w);

R=roots(den)
num1 = 25;
den1 = conv([1 -R(2)], [1 -R(3)]);
M1 = freqs(num1, den1, w);
G1 = tf(num1, den1);

figure;
subplot(4,1,1), step(G, t);
subplot(4,1,2), plot(w, abs(M));
subplot(4,1,3), step(G1,t);
subplot(4,1,4), plot(w,abs(M1));
