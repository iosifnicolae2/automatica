numg=[6 0 1]
deng=[1 3 3 1]
fun=tf(numg,deng)
subplot(1,2,1)
pzmap(fun)
numh1=[1 1]
numh2=[1 2]
numh=conv(numh1,numh2)
denh1=[1 2*i]
denh2=[1 -2*i]
denh3=[1 3]
denh=conv(conv(denh1,denh2),denh3)
fun2=tf(numh,denh)
subplot(1,2,2)
pzmap(fun2)