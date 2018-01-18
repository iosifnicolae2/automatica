Te = .3;
num = 9;
den = [1 6 0];
[n, d] = c2dm(num, den, Te, 'zoh');
[num, den] = feedback(num, den, 1, -1)
rlocus(n, d)