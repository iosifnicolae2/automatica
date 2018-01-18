num=[0 0 1 5];
den=[1 3.6 0 0];

num1=conv([ 1 2 ],[1 4]);
den1=conv([1 0 0],[1 3.6]);

num2=[1];
den2=[1 8 19 12];

num3=[0 0 0 1];
den31=conv([1 1],[1 3-j]);
den3=conv(den31,[1 3+j]);



rlocus(num,den);
rlocus(num1,den1);
rlocus(num2,den2);
rlocus(num3,den3);
