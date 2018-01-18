num1=1
den1=[1 2 0 ]
subplot(2,2,1)
rlocus(num1,den1)
subplot(2,2,2)
bode(num1,den1)
den2=[1 4]
den1=conv(den1,den2)
subplot(2,2,3)
rlocus(num1,den1)
subplot(2,2,4)
bode(num1,den1)
routh(den1)