f = @(x) sin(x) + 1;;
f_int = @(x) -cos(x) + x;

Nh = 40;
a = 0;
b = 2*pi;
x = linspace(a,b,Nh);

y = f(x);

u = 2/(b-a)*x-(b+a)/(b-a);

Xi1 = interp1(u,y,-sqrt(3/5))
Xi2 = interp1(u,y,0)
Xi3 = interp1(u,y,sqrt(3/5))

 I_exact = f_int(b) - f_int(a)
 I = (5/9*Xi1 + 8/9*Xi2 + 5/9*Xi3) * (b-a)/2


 e_gauss = abs(I-I_exact)
