A = [-1 -1; 6.5 0];
B = [1 1 ;1 0];
C = [1 0; 0 1];
D = [0 0;0 0];

[num, den] = ss2tf(A, B, C, D, 1);

subplot(4,1,1); bode(num(1,:), den); title('y1/u1');
subplot(4,1,2); bode(num(2,:), den); title('y1/u2');
subplot(4,1,3); bode(num(1,:), den); title('y2/u1');
subplot(4,1,4); bode(den, num(2,:)); title('y2/u2');