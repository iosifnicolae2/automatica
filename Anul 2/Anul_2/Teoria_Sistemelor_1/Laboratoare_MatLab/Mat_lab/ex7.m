A=[-1 -1;6.5 0];
B=[1 1;1 0];
C=[1 0;0 1];
D=[0 0;0 0];
[num,den]=ss2tf(A,B,C,D,1);
subplot(2,1,1);
nyquist(num, den);
[num,den]=ss2tf(A,B,C,D,2);
subplot(2,1,2);
nyquist(num, den)