f = @(x) sin(x) + 1;;
f_int = @(x) -cos(x) + x;

a = -5;
b = 5;

N = 167;
x = linspace(a,b,N);
y = f(x);

h = (abs(a)+abs(b))/N
w = ones(1,N)*2;
w(1) = 1;
w(N) = 1;

I = h/2*sum(w.*y);

I_exact = f_int(b) - f_int(a);
e = abs(I-I_exact)


N = 334;
x = linspace(a,b,N);
y = f(x);

h = (abs(a)+abs(b))/N
w = ones(1,N)*2;
w(1) = 1;
w(N) = 1;

I = h/2*sum(w.*y);

I_exact = f_int(b) - f_int(a);
e2 = abs(I-I_exact)
