num1=[1 5];
den1=[1 3.6 0 0]

num2=conv([1 2],[1 4]);
den2=[1 3.6 0 0];

num3=[1];
den3=[1 8 19 12];

num4=[1];
den41=conv([0 1 1],[1 3 -j]);
den4=conv(den41,[1 3 +j]);

%rlocus(num1,den1);
%rlocus(num2,den2);
%rlocus(num3,den3);
rlocus(num4,den4);