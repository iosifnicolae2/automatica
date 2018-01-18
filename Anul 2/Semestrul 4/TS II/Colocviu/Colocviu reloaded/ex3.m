n1 = 1; d1 = [1 3];
n2 = .5; d2 = 1;
n3 = 4; d3 = [1 4];
n4 = [1 4]; d4 = [4 8];

q = [1 0  0
     2 1 -4
     3 2  0
     4 3  0];
nblocks = 4;
blkbuild;
iu = 1;
iy = 4;
[A, B, C, D] = connect(a, b, c, d, q, iu, iy);
[num, den] = ss2tf(A, B, C, D);