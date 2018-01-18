num=conv([25],[0.4 1]);
den=conv([0.16 1],[1 6 25]);
t=[0:0.02:2];
step(num,den,t);