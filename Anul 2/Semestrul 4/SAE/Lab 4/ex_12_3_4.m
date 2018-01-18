numz = k.*[1 .717];
denz = conv([1 -1],[1 -.368]);
k = .368;
rlocus(numz, denz);
zgrid;