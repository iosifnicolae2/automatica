num = 1;
den = [1 2 0];

subplot(2,1,1); bode(num, den); title('bode');
subplot(2,1,2); rlocus(num, den); title('rlocus');

%%
den = conv(den, [1 4]);
subplot(2,1,1); bode(num, den); title('bode- pol -4');
subplot(2,1,2); rlocus(num, den); title('rlocus pol -4');




G = tf(num, den);
save ('ex_7_3_3.mat', 'G');