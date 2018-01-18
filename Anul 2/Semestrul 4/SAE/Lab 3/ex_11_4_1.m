w = 0:.01:4;
Te = .1;
num = 9;
den = [1 3 0];
[numc, denc] = cloop(num, den);
hc = freqs(numc, denc, w);

[numz, denz] = c2dm(num, den, Te, 'zoh'); 
[numz, denz] = cloop(numz, denz);
hz = freqz(numz, denz, w);

subplot(2,1,1); plot(w, abs(hc)); title('continuu');
subplot(2,1,2); plot(w, abs(hz)); title('discret');
