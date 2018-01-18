wp = .7;
Gp = .4;
ws = .1;
Gs = .2;

GpdB = 20*log10(Gp);
GsdB = 20*log10(Gs);

[N, wn] = cheb1ord(wp, ws, GpdB, GsdB);
[num, den] = cheby1(N, 1, wn, 'high');

Gw = bode(num, den);
plot(Gw)