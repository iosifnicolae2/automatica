A = [ 0 1 0; 0 1 1; -1 -2 -3];
B = [10; 0; 0];
C = [1 0 0];
D = 0;

%functia de transfer
[num, den] = ss2tf(A, B, C, D, 1);

%matricea de tranzitie
syms t;
fi = expm(A.*t);

%matricea fundamentala
%FI = laplace(fi(1,1))

%daca sistemul e controlabil si observabil
ctrb(A, B)
obsv(A, C)