num = 25;
den = conv([1 1 0], [1 10]);
[num, den] = feedback();
bode(num, den);
[A, fi] = margin(num, den);