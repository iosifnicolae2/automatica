w = [0: .01: 4];
Te = .1;
num = 9;
den = [1 3 0];
[n, d] = c2dm(num, den, Te, 'zoh');
[n, d] = cloop(n,d);
h = freqz(n, d, w);

subplot(2,1,1); plot(w, abs(h));
subplot(2,1,2); dnyquist(n, d, Te, w)