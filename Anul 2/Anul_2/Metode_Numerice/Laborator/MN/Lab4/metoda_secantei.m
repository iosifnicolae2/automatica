function [f, precizie, x1, x2, eroare] = metoda_secantei(f, precizie, x1, x2, eroare)
    y1 = f(x1);
    y2 = f(x2);
    m = (y2-y1)/(x2-x1);
    x3 = x2 - y2/m;
    y3 = f(x3);
    x4 = x3 - f(x3)/m;
    x1 = x3;
    x2 = x4;
    eroare = [eroare, abs(f(x4))];
    if abs(f(x4))< precizie
        return;
    end
    [f, precizie, x1, x2, eroare] = metoda_secantei(f, precizie, x1, x2, eroare);
    
end

