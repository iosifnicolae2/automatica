num=25;
den=[1 11 10 0];
[num1, den1]=cloop(num, den);
bode(num1, den1);
[A, fi]=margin(num1, den1);

