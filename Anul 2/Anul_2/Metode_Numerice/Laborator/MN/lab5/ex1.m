x = [0 1 2 3 4 5];
y = [3 2 7 24 59 118];
xm = linspace(0,5,100);
ym = interp1(x,y,xm);


px = x(1:4)';
py = y(1:4)';
V = [px.^3 px.^2 px.^1 px.^0];
coefs = inv(V)*py;
a = coefs(1);
b = coefs(2);
c = coefs(3);
d = coefs(4);

xm2 = linspace(0,3,100);
ym2 = a.*xm2.^3 + b.*xm2.^2 + c.*xm2 + d;
subplot(2,2,1);

plot(px,py,'g');
title('Puncte initiale');

subplot(2,2,2);
plot(xm,ym,'b');
title('Interpolare');

subplot(2,2,3);
plot(xm2,ym2,'r');
title('Polinoame');




