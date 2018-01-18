num = 10;
den = conv([1 2.5], [1 2 4]);
G = tf(num, den)
t = 0: .02: 4;
w = 0: .01: 3;
M = freqs(num, den, w);

figure;
subplot(2,1,1), step(G, t);
subplot(2,1,2), plot(w, abs(M));