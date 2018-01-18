n1=[1];
d1=[1];

n2=[0.5];
d2=[1];

n3=[4];
d3=[1 4];

n4=[1];
d4=[1 2];

nblocks=4;
blkbuild;

q=[1 0 0 0;2 1 -4 0;3 2 0 0;4 3 0 0 ]
[A,B,C,D]=connect(a,b,c,d,q,1,4)
[num,den]=ss2tf(A,B,C,D,1)
sys=tf(num,den)
 
