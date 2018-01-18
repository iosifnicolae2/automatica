k = [0: .5; 12];
num = 1; den = [1 4 0 0];
[num, den] = feedback(num, den,1, -1);
rlocus(num, den, k);