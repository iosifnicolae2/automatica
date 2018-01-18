A=[-2 0;1 0];
B=[1;0];
C=[0 4];
D=0;
[num,den]=ss2tf(A,B,C,D,1);

g=freqs(num,den,w);
plot(w,abs(g))