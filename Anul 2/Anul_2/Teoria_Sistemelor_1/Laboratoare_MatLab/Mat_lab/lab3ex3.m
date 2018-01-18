num=[1 1];
den=[1 5];

num1=[2];
den1=[1 2 0 0];

[nums,dens]=series(num,den,num1,den1);
[numc,denc]=cloop(nums,dens,-1);

rlocus(numc,denc)