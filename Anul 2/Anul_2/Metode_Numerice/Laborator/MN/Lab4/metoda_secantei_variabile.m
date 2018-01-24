function [f, precizie, x1, x2, eroare] = metoda_secantei_variabile(f, precizie, x1, x2, eroare)
    y1 = f(x1);
    y2 = f(x2);
    m = (y2-y1)/(x2-x1);
    x3 = x2 - y2/m;
    x2 = x3;
    eroare = [eroare, abs(f(x2))];
    if abs(f(x2)) < precizie
        return;
    end
    [f, precizie, x1, x2, eroare] = metoda_secantei(f, precizie, x1, x2, eroare);
    
end

