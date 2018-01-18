n1 = [1 1]; d1 = [1 2];
n2 = 1; d2 = [1 1];
n3 = [1 5]; d3 = [1 5 6];

q = [1 -3 0
     2 1  0
     3 2  0];

nblocks = 3;
blkbuild;
iu = 1;
iy = 3;

[A, B, C, D] = connect (a, b, c, d, q, iu, iy);
[num, den] = ss2tf(A, B, C, D);
step(num, den)
