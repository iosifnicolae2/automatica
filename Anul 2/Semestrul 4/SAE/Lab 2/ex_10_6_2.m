Te = .3;
t = 0:Te:5;
num = 1;
den = [1 1];
[numd, dend] = c2dm(num, den, Te, 'zoh');
[numf, denf] = cloop(numd, dend);

subplot(3,1,1); dstep(numf, denf); title('treapta');
subplot(3,1,2); dlsim(numf, denf, t); title('rampa');
subplot(3,1,3); dimpulse(numf, denf); title('impuls unitar');