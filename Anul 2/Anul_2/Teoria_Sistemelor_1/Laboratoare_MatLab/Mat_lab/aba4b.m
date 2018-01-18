num1=[150 30 75]
den1=[0.01 0.13 0.3 3]
num2=[20 20 20]
den2=[0.01 0.12 1.2 2]
a=logspace(-3,3)
b=logspace(-2,2)
subplot(2,1,1)
bode(num1,den1,a)
subplot(2,1,2)
 bode(num1,den2,b)
margin(num1,den1)
margin(num2,den2)