zita1=0.3;
zita2=0.7;
zita3=0.9;

num=[10];
den=[1 2 10];
G=tf(num,den);

% forma generala a sistemului de ordinu 2:
q=wn^2 / (2 + 2  * zita * wn + wn^2)

step(num,den);

%  suprareglaj in procente
zita1 = den(2) / (2 * sqrt(den(3)));
mv = exp((-pi * zita1) / sqrt (1 - zita1^2)) * 100
%  timp stabilire
ts1 = 4 / zita1 * sqrt(den(3))  %  criteriul 5%
ts2 = 5 / zita1 * sqrt(den(3))  %  criteriul 2%