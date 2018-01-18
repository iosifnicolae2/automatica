A = [0 -0.25; 1 1]
B = [1;1]
C = [0 1];

D = 0;

subplot(2,1,1)
freqz(B,A)

[num,den] = ss2tf(A,B,C,D)
sys = tf(num,den)

subplot(2,1,2)
rlocus(sys)