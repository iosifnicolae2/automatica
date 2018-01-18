n1=[1 1];
d1=[1 2];

n2=[1];
d2=[1 1];

n3=[1 5];
d3=[1 5 6];

nblocks=3;
blkbuild;
%numerotez blocurile cd > bucla pe coloana si dupa 
%a 2 a coloana blocurile care intra in termenul coresp de pe prima coloana
q=[1 3 0; 2 1 0; 3 2 0];
[A,B,C,D]=connect(a,b,c,d,q,1,3)
[num,den]=ss2tf(A,B,C,D,1)
sys=tf(num,den)