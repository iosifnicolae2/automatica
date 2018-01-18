num1=[1 1];
den1=[1 5];

num2=[2];
den2=[1 2 0 0];

[num,den]=series(num1,den1,num2,den2);
[numm,denn]=cloop(num,den);

rlocus(numm,denn);
[k,p]=rlocfind(numm,denn)