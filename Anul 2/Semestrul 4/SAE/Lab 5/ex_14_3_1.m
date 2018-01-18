%pag 122
function [sys, x0, str, Te] = sistem_continuu(t, x, u, flag, A, B, C, D)

    %daca flag = 1 returneaza derivatele
    if flag == 1
        sys = A*x +B*u;
    %daca flag = 3 returneaza iesirile
    elseif flag == 3
        sys = C*x + D*x;
    elseif flag == 0;
            sys = [2,0,1,1,0,0,0];
            x0 = 0;
            str = [];
            Te = [];
    else sys = [];
    end
    
end