w = [0:0.01:10];
num = conv([120], [1 2]);
den = conv([1 3], [1 4]);
q = freqs(num, den, w);
plot(w, abs(q));
pause;
bode(num, den, w);