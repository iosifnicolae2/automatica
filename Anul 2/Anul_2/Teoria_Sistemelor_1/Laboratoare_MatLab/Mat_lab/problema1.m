A=[0 -0.25;1 1]
B=[1;1]
C=[0 1]
D=[0]

[num,den]=ss2tf(A,B,C,D)
[mag,phase,w]=bode(num,den)
subplot(2,1,1)
rlocus(num,den)
[num1,den1]=cloop(num,den,-1)
subplot(2,1,2)
h=freqs(num1,den1,w)
plot(w,abs(h))
