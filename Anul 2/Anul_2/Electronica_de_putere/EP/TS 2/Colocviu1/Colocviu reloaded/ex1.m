t = 0: .2: 2;
num = 24; den = [1 8 16 24];

h = freqs(num, den);
R = roots(den);

num1 = 24;
den1 = conv(den, [1 10]); %adaugam un pol > 5* partea reala = 1
h1 = freqs(num1, den1);

subplot(2,1,1); plot(abs(h)); title('original');
subplot(2,1,2); plot(abs(h1)); title('redus');