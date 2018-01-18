A=[0 1; -25 -4];
B=[1 1; 0 1];
C=[1 0; 0 1];
D=[0 0; 0 0];
[num,den]=ss2tf(A,B,C,D,1);
tf(num(1,:),den)
subplot(2,2,1);
bode(num(1,:),den);
tf(num(2,:),den)
subplot(2,2,2);
bode(num(2,:),den);
B=[0 1;0 1];
[num,den]=ss2tf(A,B,C,D,2);
tf(num(1,:),den)
subplot(2,2,3);
bode(num(1,:),den);
tf(num(2,:),den)
subplot(2,2,4);
bode(num(2,:),den);
