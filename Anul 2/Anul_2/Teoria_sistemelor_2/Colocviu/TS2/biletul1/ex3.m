k=[0:0.05:12];
A=[-1 0;1 0];
B=[1;0];
C=[0 0.1];
D=[0];


[num,den]=ss2tf(A,B,C,D);
freqs(num,den);

nyquist(num,den)


