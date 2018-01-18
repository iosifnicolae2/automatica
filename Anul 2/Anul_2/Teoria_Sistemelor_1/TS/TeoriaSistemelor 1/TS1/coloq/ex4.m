num=[1 0.5];
den=conv([1 10 0], [1 100]);
G=tf(num,den);
k=4000;
b=bode(num,den,k);