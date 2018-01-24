function [f, precizie, a, b, eroare] = metoda_injumatatirii(f, precizie, a, b, eroare)
    c = (a+b)/2;
    eroare = [eroare, abs(f(c))];
    if abs(f(c)) < precizie
        return
    end
    if f(a)*f(c) < 0
        b = c;
        [f, precizie, a, b, eroare] = metoda_injumatatirii(f, precizie, a, b, eroare);
        return
    end
    
    if f(c)*f(b) < 0
        a = c;
        [f, precizie, a, b, eroare] = metoda_injumatatirii(f, precizie, a, b, eroare);
        return
    end
end

