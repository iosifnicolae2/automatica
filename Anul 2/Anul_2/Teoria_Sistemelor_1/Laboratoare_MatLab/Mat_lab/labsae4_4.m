num=[0.368 0.368*0.717];
den1=[1 -1];
den2=[1 -0.368];
den=conv(den1,den2);
rlocus(num,den);
zgrid;