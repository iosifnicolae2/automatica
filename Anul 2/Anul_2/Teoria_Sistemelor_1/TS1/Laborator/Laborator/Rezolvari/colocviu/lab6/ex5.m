num=10
den=[1 3 2 0]
w=logspace(-1,2)
hold on
subplot(1,2,1)
nyquist(num,den,w)
sys=tf(num,den)
subplot(1,2,2)
pzmap(sys)