f = @(x) sin(x) + 1;;
f_int = @(x) -cos(x) + x;

Nh = 40;
Nk = 20;
xh = linspace(-5,5,Nh);
xk = linspace(-5,5,Nk);
yh = f(xh);
yk = f(xk);
h = 10/Nh
k = 10/Nk


wk = ones(1,Nk)*2;
wh = ones(1,Nh)*2;
wh(1) = 1;
wh(Nh) = 1;
wk(1) = 1;
wk(Nk) = 1;


Ih = h/2*wh*yh'
Ik = k/2*wk*yk'

I = Ih + (Ih - Ik)/(k^2/(h^2)-1)

I_exact = f_int(5) - f_int(-5);
e2 = abs(I-I_exact)
