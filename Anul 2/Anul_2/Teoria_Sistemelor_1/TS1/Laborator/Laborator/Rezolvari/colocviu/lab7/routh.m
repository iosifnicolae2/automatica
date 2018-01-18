% firstcol = routh(poly)
%
% Calculates and displays the Routh-Hurwitz Array for the polynomial
% poly, and returns the first column of the array.  The number 
% of sign changes in firstcol is equal to the number of roots of
% poly with positive real components (RHP roots).
%
% Special cases (zeros in the first column) are not handled.

function firstcol = routh(ce)

nrows = length(ce);
ncols = ceil(nrows/2);
Rarray = zeros([nrows, ncols]);
ce = [ce, 0];

Rarray(1,:) = ce(2*(1:ncols) - 1);
Rarray(2,:) = ce(2*(1:ncols));

for i = 3:nrows,
   for j = 1:(ncols - floor((i-1)/2)),
      Rarray(i,j) = Rarray(i-2,j+1) - Rarray(i-1,j+1)*Rarray(i-2,1)/Rarray(i-1,1);
   end
end

disp(' ')
disp('Routh Array:')
disp(Rarray)

firstcol(1:nrows) = Rarray(:,1);

