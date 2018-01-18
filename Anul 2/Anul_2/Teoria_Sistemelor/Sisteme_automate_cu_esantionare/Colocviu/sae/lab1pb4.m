[num1,den1]=c2dm([0 1 0],[1 1 0],0.3,'zoh')
[num2]=conv(num1,[0 1 0]);
[den2]=conv(den1,[0 1 -1]);
[num,den]=cloop(num2,den2,-1);
printsys(num,den,'z')