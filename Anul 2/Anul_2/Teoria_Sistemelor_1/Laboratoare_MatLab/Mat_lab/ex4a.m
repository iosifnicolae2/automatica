num1=[0 0 0 0 150]
num2=[0 0 0 1 0.2]
num3=[0 0 0 1 1]

numg1=conv(conv(num1,num2),num3)

den1=[0 0 0 1 0]
den2=[0 0 0 1 2]
den3=[0 0 0.01 0.1 1]

deng1=conv(conv(den1,den2),den3)

num12=[0 0 0 0 20]
num22=[0 0 1 1 1]

numg2=conv(num12,num22)

den12=[0 0 0 1 0]
den22=[0 0 0 1 2] 
den32=[0 0 0.01 0.1 1]

 deng2=conv(conv(den12,den22),den32)

 subplot(2,2,1);
bode(numg1,deng1);
subplot(2,2,2);
bode(numg2,deng2);
subplot(2,2,3);
[mag,phase,w]=bode(numg1,deng1);
mag=20*log(mag);
plot(mag,w,'b',phase,w,'y')
subplot(2,2,4);
[mag1,phase1,w1]=bode(numg2,deng2);
mag1=20*log(mag1);
plot(mag1,w1,'r',phase1,w1,'g')
margin(numg1,deng1)
margin(numg2,deng2)
