num=1;
den=[1 2 0];

figure;
subplot(2, 1, 1); rlocus(num, den); title('Locul radacinilor');
subplot(2, 1, 2); bode(num, den); title('Caracteristice Bode');

den=conv(den, [1 4]);

figure;
subplot(2, 1, 1); rlocus(num, den); title('Locul radacinilor cu un pol aditional');
subplot(2, 1, 2); bode(num, den); title('Caracteristicile Bode  cu un pol aditional');
