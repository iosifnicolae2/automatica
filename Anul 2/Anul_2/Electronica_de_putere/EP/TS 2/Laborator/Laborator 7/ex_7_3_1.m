k = 0: .5: 12;
num1 = [1 5]; den1 = [1 3.6 0 0];
num2 = [1 6 8]; den2 = [1 3.6 0 0];
num3 = 1; den3 = [1 8 19 12];
num4 = 1; den4 = conv([1 1], conv([1 3-1i], [1  3+1i]));

subplot(4,1,1); rlocus(num1, den1, k);
subplot(4,1,2); rlocus(num2, den2, k);
subplot(4,1,3); rlocus(num3, den3, k);
subplot(4,1,4); rlocus(num4, den4, k);