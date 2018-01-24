
f = [3 16 5;5 7 9;9 12 15];

x1 = 0;
y1 = 0;
x2 = 1;
y2 = 1;


xp = linspace(0,1,250);
yp = linspace(0,1,250);
fp = zeros(250,250);
w00 = 1;

f11 = [f(1,1:2);f(2,1:2)];
for i = 1:250
 for j = 1:250
     w11 = (x2 - xp(i))*(y2 - yp(j))/w00;
     w12 = (x2 - xp(i))*(yp(j) - y1)/w00;
     w21 = (xp(i) - x1)*(y2 - yp(j))/w00;
     w22 = (xp(i) - x1)*(yp(j) - y1)/w00;
     fp11(i,j) = w11*f11(1,1) + w12*f11(1,2) + w21*f11(2,1) + w22*f11(2,2);
 end
end

f23 = [f(1,2:3);f(2,2:3)];
for i = 1:250
 for j = 1:250
     w11 = (x2 - xp(i))*(y2 - yp(j))/w00;
     w12 = (x2 - xp(i))*(yp(j) - y1)/w00;
     w21 = (xp(i) - x1)*(y2 - yp(j))/w00;
     w22 = (xp(i) - x1)*(yp(j) - y1)/w00;
     fp12(i,j) = w11*f23(1,1) + w12*f23(1,2) + w21*f23(2,1) + w22*f23(2,2);
 end
end


f13 = [f(2,1:2);f(3,1:2)];
for i = 1:250
 for j = 1:250
     w11 = (x2 - xp(i))*(y2 - yp(j))/w00;
     w12 = (x2 - xp(i))*(yp(j) - y1)/w00;
     w21 = (xp(i) - x1)*(y2 - yp(j))/w00;
     w22 = (xp(i) - x1)*(yp(j) - y1)/w00;
     fp21(i,j) = w11*f13(1,1) + w12*f13(1,2) + w21*f13(2,1) + w22*f13(2,2);
 end
end


f33 = f(2:3,2:3);
for i = 1:250
 for j = 1:250
     w11 = (x2 - xp(i))*(y2 - yp(j))/w00;
     w12 = (x2 - xp(i))*(yp(j) - y1)/w00;
     w21 = (xp(i) - x1)*(y2 - yp(j))/w00;
     w22 = (xp(i) - x1)*(yp(j) - y1)/w00;
     fp22(i,j) = w11*f33(1,1) + w12*f33(1,2) + w21*f33(2,1) + w22*f33(2,2);
 end
end
subplot(3,2,1);
imagesc(f)
title('Original');
axis off;

subplot(3,2,2);
imagesc(fp11)
title('Interpolat 11');
axis off;



subplot(3,2,3);
imagesc(fp12)
title('Interpolat 12');
axis off;

subplot(3,2,4);
imagesc(fp21)
title('Interpolat 21');
axis off;



subplot(3,2,5);
imagesc(fp22)
title('Interpolat 22');
axis off;


% for i = 1:250
%  for j = 1:250
%      w11 = (x2 - xp(i))*(y2 - yp(j))/w00;
%      w12 = (x2 - xp(i))*(yp(j) - y1)/w00;
%      w21 = (xp(i) - x1)*(y2 - yp(j))/w00;
%      w22 = (xp(i) - x1)*(yp(j) - y1)/w00;
%      fp_tot(i,j) = w11*fp11(i,j) + w12*fp12(i,j) + w21*fp21(i,j) + w22*fp22(i,j);
%  end
% end

fp_tot = [fp11 fp12;fp21 fp22];

subplot(3,2,6);
imagesc(fp_tot)
title('Interpolat total');
axis off;

