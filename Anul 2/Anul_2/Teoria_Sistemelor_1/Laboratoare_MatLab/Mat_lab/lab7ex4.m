num=[4 1];
den=[6 2];


subplot(3,1,1);
rlocus(num,den);

subplot(3,1,2);
bode(num,den);

subplot(3,1,3);
nyquist(num,den);