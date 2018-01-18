w=[0:0.01:60];
num=[1 1 260];
den=[1 24 260];
Gw=bode(num,den,w)
plot(w,Gw)
title('filtru opreste-banda');