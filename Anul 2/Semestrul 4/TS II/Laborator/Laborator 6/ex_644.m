num1 = conv(150, [1 .2]);
den1 = conv([1 0], conv([1 2], [.01 .1 1] ));
G1 = tf(num1, den1);
num2 = conv(20, [1 1 1]);
den2 = conv([1 0], conv([1 2], [.01 .1 1]));
G2 = tf(num2, den2);

figure;
subplot(2, 1, 1), bode(num1, den1); title('G1');
subplot(2, 1, 2), bode(num2, den2); title('G2');

%%
w1 = logspace(-3, 3);
w2 = logspace(-2, 2);

[mag1, phase1] = bode(num1, den1, w1);
M1 = freqs(num1, den1, w1);
[mag2, phase2] = bode(num2, den2, w2);
M2 = freqs(num2, den2, w2);

figure;
subplot(2, 2, 1), plot(w1,mag1);   title('G1 - amplitudine');
subplot(2, 2, 2), plot(w1,phase1); title('G1 - faza');
subplot(2, 2, 3), plot(w1,mag1);   title('G2 - amplitudine');
subplot(2, 2, 4), plot(w2,phase2); title('G2 - faza');
%% marginile de amplitudine si de faza
figure;
subplot(2, 1, 1), margin(num1, den1);
subplot(2, 1, 2), margin(num2, den2);