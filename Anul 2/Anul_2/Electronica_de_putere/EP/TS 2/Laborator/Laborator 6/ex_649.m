w = 0: .1: 20;
t = 0: .01: 8;
u = ones(1, length(t));

num1 = 1; den1 = [1 0];
num2 = 1; den2 = [3 0];

freqs(num1, den1, w);
lsim(num1, den1, 1, t);
lsim(num1, den1, u, t);