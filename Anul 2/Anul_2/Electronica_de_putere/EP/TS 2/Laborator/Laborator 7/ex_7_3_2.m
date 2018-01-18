num = conv([1 1], 2);
den = conv([1 5], [1 2 0]);
rlocus(num, den);
[k, poles] = rlocfind(num, den);