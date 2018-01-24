function [x] = SolveLU (A,b)
%SolveLU Resolve general ecuations
% Variabilele de intrare sunt matricea coeficienților A și matricea coloană a termenilor liberi b # Variabilele de ieșire sunt noile matrici A_ și b_ unde A_ a fost adusă la forma triunghiulară
n = size(A);
n = n(1);
A_ = A;
b_ = b;
E = eye(n,n);
% Se parcurg toate elementele de sub diagonala principală
for col = 1:n
    for row = col+1:n
        % Se calculează matricea E pentru fiecare element de sub diagonala principală E = eye(n,n);
        factor = A_(row,col)/A_(col,col);
        E(row,:) = E(row,:) - E(col,:)*factor;
        % Se multiplică la stânga ambii membrii ai sistemului cu matricea E calculată mai sus A_ = E*A_;
        b_ = E*b_;
    end
end
n = size(A_);
n = n(1);
x = zeros(n,1);
% soluția x_n
x(n) = b_(n)/A_(n,n);
% soluțiile rămase în ordine inversă 
for i = n-1:-1:1
    x(i) = (b_(i) - A_(i,i+1:n)*x(i+1:n))/A_(i,i); 
end
end

