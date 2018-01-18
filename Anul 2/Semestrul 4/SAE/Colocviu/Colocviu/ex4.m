a = 4; b = 36;
Te = .1;
num = [1 a];
den = [1 2*a-1 b-a]

[nz, dz] = c2dm(num, den, Te, 'zoh');
