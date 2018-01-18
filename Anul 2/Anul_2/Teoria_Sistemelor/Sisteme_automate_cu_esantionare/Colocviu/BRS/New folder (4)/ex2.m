num=[0 0 9];
den=[1 6 0];

[numa,dena]=c2dm(num, den, 0.3);
[numz,denz]=cloop(numa,dena);
printsys(numz,denz,'z')

rlocus(numz,denz)