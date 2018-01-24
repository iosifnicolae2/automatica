f = @(x) log(x) + x;
interval_start = 0.05;
interval_end = 2;
precizie = 10^-14;
[f, precizie, a, b, eroare1] = metoda_injumatatirii(f, precizie, interval_start, interval_end, []);
solutia1 = (a+b)/2;
val_sol2 = f(solutia1);



[f, precizie, x1, x2, eroare2] = metoda_secantei(f, precizie, interval_start, interval_end, []);
solutia2 = x2;
val_sol2 = f(solutia1);

[f, precizie, x1, x2, eroare3] = metoda_secantei_variabile(f, precizie, interval_start, interval_end, []);
solutia3 = x2;
val_sol3 = f(solutia1);

f_deriv = @(x) 1/x + 1;
[f, precizie, x1, x2, eroare4] = metoda_tangentei(f, f_deriv, precizie, interval_start, interval_end, []);
solutia3 = x2;
val_sol3 = f(solutia1);

semilogy(eroare1);
hold on;
semilogy(eroare2);
semilogy(eroare3);
semilogy(eroare4);