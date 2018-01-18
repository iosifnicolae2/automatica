num1=150
num2=[1 0.2]
num3=[1 1]
num=conv(num1,conv(num2,num3))
den1=[1 0]
den2=[1 2]
den3=[0.01 0.1 1]
den=conv(conv(den1,den2),den3)
w=logspace(-3,3)
[mag,phase]=bode(num,den,w)
plot(mag ,phase)
margin(num,den)