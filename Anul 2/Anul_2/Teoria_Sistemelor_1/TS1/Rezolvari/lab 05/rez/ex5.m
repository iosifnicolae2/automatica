t=[0:0.1:2];
numg=[0 6];
deng=[1 2];
numh=[0 2];
denh=[1 1];
[nume,dene]=parallel(numg, deng, numh, denh);
step(nume,dene,t);