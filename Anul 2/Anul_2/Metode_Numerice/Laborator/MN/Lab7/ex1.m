f = @(x) 2*x.^3 + 7*x.^2 + x + 1;
f_deriv = @(x) 6*x.^2 + 14*x + 1;

N = 100;
x = linspace(-10,10,N);
y = f(x);
h = 20/(N-1);
dydx = diff(y)./diff(x);
dydx = diff(y)./h;
x_ = x(1:N-1)+h/2;
plot(x_,dydx,x_,f_deriv(x_))
legend('Numeric','Exact')


eroare = sum(abs(dydx - f_deriv(x_)))





N = 1000;

x = linspace(-10,10,N);
y = f(x);

h = 20/(N-1);


dydx = diff(y)./diff(x);

dydx = diff(y)./h;

x_ = x(1:N-1)+h/2;
plot(x_,dydx,x_,f_deriv(x_))
legend('Numeric','Exact')


eroare2 = sum(abs(dydx - f_deriv(x_)))
