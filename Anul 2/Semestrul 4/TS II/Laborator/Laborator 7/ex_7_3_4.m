num = [4 1]; den = [6 1];
subplot(3,1,1); rlocus(num, den); title('locul radacinilor');
subplot(3,1,2); bode(num, den); title('bode');
subplot(3,1,3); nyquist(num, den); title('curba polara');