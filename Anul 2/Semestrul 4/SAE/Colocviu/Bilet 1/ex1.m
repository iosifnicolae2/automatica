wn = 12;
zeta = .5;
Te = .1;
numd = wn*wn;
dend = [1 2*zeta*wn 0];

[n, d] = c2dm(numd, dend, Te, 'zoh');
