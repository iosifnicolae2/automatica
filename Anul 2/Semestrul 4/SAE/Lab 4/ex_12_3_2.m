A = [0 1 0 0; 0 .18 2.67 0; 0 0 0 1; 0 .45 31.18 0];
B = [0; 1.8; 0; 4.5];
C = [1 0 0 0; 0 0 1 0];
D = [0; 0]; %coloane cat B, linii cat C
Ts= .01;

[Ad, Bd, Cd, Dd] = c2dm(A, B, C, D, Ts, 'zoh');
CO = ctrb(Ad, Bd); % daca rangul matricii controlabile CO != 0, sist ctrb
rank(CO)
OB = obsv(Ad, Cd); % -------"------------------------- OB != 0, s obsv
rank(OB)