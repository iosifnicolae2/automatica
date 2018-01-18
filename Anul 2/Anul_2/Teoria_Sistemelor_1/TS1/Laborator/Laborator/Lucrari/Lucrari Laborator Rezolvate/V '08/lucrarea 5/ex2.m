t=[0:0.02:2];
omega=5;
z=0.6;
num=[25*0.4 25];
den1=[0.16 1];
den2=[1 6 25];
den=conv(den1,den2);
step (num,den,t)
