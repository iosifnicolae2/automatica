numg1=[1]
deng1=[1 10]
numg2=[1]
deng2=[1 1]
numg3=[1 0 1]
deng3=[1 4 4]
numg4=[1 1]
deng4=[1 6]
numh1=[2]
denh1=[1]
numh2=[1 1]
denh2=[1 2]
numh3=[1]
denh3=[1]
% se deplaseaza blocul g4 rezulta h1=h1/g4
numh1=conv(numh1,deng4)
denh1=conv(denh1,numg4)
[numg34,deng34]=series(numg3,deng3,numg4,deng4)
% se elimina bucla g3g4h2
[numg34h2,deng34h2]=feedback(numg34,deng34,numh2,denh2)
% se elimina bucla g2g34h2 h1
[numg234h2,deng234h2]=series(numg2,deng2,numg34h2,deng34h2)
[numg234h12,deng234h12]=feedback(numg234h2,deng234h2,numh1,denh1)
[numg1234h12,deng1234h12]=series(numg1,deng1,numg234h12,deng234h12)
[numg1234h123,deng1234h123]=feedback(numg1234h12,deng1234h12,numh3,denh3)
tf(numg1234h123,deng1234h123)