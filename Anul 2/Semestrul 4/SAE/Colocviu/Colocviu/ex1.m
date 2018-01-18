Te = .3;
num1 = 1;
den1 = [1 1 0];
[n1, d1] = c2dm(num1, den1, Te, 'zoh');

num2 = 2; %artificiu, se inmulteste cu un s
den2 = [1 4];
numz = [1 0];
denz = [1 -1];
[n2, d2] = c2dm(num2, den2, Te, 'zoh');
[n2f, d2f] = series(n2, d2, numz, denz);

[num, den] = series(n1, d1, n2f, d2f)