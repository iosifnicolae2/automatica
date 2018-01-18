num = [1 1];
den = [.1 1];
w = logspace(-1,2);

[mag, phase]= bode(num, den, w);

magdB = 20*log10(mag);

[numz, denz] = c2dm(num, den, Te, 'zoh'); 
[magd, phased] = dbode(numz, denz, Te, w);
magddB = 20*log10(magd); 

subplot(2,1,1); plot(log10(w), magdB, log10(w), phase);
subplot(2,1,2); plot(log10(w), magddB, log10(w), phased);
