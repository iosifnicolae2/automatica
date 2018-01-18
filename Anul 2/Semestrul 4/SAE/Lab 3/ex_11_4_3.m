Te = .1;
w = logspace(-1, 2);
num = 1;
den = [1 1 0];

[numz, denz] = c2dm(num, den, Te, 'zoh'); 

subplot(2,1,1); nyquist(num, den, w); title('continuu');
subplot(2,1,2); dnyquist(numz, denz, Te, w); title('discret');

%[re, im] = nyquist(num, den, w); daca vreau sa vad tot conturul nyquist
