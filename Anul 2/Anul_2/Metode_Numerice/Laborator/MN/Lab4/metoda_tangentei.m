function [f, precizie, x1, x2, eroare] = metoda_tangentei(f, f_deriv, precizie, x1, x2, eroare)
    y1 = f(x1);
    y2 = f(x2);
    x3 = x1-y1/f_deriv(x1);
    x4 = x3-f(x3)/f_deriv(x3);
    x1 = x3;
    x2 = x4;
    eroare = [eroare, abs(f(x2))];
    if abs(f(x2)) < precizie
        return;
    end
    [f, precizie, x1, x2, eroare] = metoda_tangentei(f, f_deriv, precizie, x1, x2, eroare);
    
end

