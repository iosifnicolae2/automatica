n1=[0 1];
d1=[0 1];
n2=[0.5];
d2=[1];
n3=[0 4];
d3=[1 4];
n4=[0 1];
d4=[1 2];
[n23,d23]=series(n2,d2,n3,d3);
[n234,d234]=feedback(n23,d23,n4,d4,-1);
[num,den]=series(n1,n234,d1,d234);
[A,B,C,D]=tf2ss(num,den);