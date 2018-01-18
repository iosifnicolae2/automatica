t = 0: .2: 2;
w = 0: .2: 8;
num = 750;
den = [1 36 205 750];
M = freqs(num, den, w);

R = roots(den);

% pentru reducerea ordinului se adauga un pol > 5 * |partea reala|
%partea reala a 3-4i este 3, 5*3 = 15< 30 polul pe care il eliminam
%functia de transfer modificata

num1 = 25;
den1 = conv([1 -R(2)], [1 -R(3)]);
M1 = freqs(num1, den1, w);
G1 = tf(num1, den1);


figure;
subplot(2,2,1), step(t, G);
subplot(2,2,2), plot(w, abs(M));
subplot(2,2,3), step(t, G1);
subplot(2,2,4), plot(w, abs(M1));

