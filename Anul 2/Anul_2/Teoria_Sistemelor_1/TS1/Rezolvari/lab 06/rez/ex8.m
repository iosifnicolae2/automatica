num=[0 0 0 25];
den1=[0 0 1 0];
den2=[0 0 1 1];
den3=[0 0 1 10];
den=conv(conv(den1,den2),den3);
bode(num,den)
margin(num,den)
