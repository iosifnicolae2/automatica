t = [0:0.01:10];
num1 = [100];
den1 = conv([1 0], [1 12]);
[num, den] = cloop(num1, den1, -1);
%  raspunsul la treapta
step(num, den, t);
%  suprareglaj in procente
zita = den(2) / (2 * sqrt(den(3)));
mv = exp((-pi * zita) / sqrt (1 - zita^2)) * 100
%  timp stabilire
ts1 = 4 / zita * sqrt(den(3))  %  criteriul 5%
ts2 = 5 / zita * sqrt(den(3))  %  criteriul 2%