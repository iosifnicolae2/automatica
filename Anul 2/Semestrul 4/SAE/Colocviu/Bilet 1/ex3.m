w = 0: .01: 4;
Te = .1;

num = 9;
den = [1 7 0];

[n, d] = c2dm(num, den, Te, 'zoh');
[n1,d1]=cloop(n,d,-1);

h = freqz(n1,d1,w);
subplot(2,1,1); plot(h);
subplot(2,1,2); dnyquist(n1, d1, Te);