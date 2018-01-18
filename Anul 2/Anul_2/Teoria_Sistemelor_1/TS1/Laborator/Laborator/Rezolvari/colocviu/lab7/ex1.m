num1=[1 5]
den1=[1 3.6 0 0 ]
num2a=[1 2]
num2b=[1 4]
num2=conv(num2a,num2b)
den2=den1
num3=1
den3=[1 8 19 12]
num4=num3
den4a=[1 1]
den4b=[1 3-i]
den4c=[1 3+j]
den4=conv(den4a,conv(den4b,den4c))
k=[0:0.5:12]
subplot(2,2,1)
rlocus(num1,den1,k)
subplot(2,2,2)
rlocus(num2,den2,k)
subplot(2,2,3)
rlocus(num3,den3,k)
subplot(2,2,4)
rlocus(num4,den4,k)