n1=[0.5];
d1=[1 1];

n2=[4];
d2=[1 4];

n3=[1];
d3=[1 2];

n4=[2];
d4=[1];

nblocks=4;
blkbuild;

q=[1 -4 0 0;2 1 0 0; 3 2 0 0;4 2 0 0];
[A,B,C,D]=connect(a,b,c,d,q,1,4)
[num,den]=ss2tf(A,B,C,D)
sys=tf(num,den)