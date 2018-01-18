numg=[6 0 1];
deng=[1 3 3 1];
%sys1=tf(numg, deng);
numh=[1 3 2];
denh=[1 3 2 3];
gz=roots(numg)
gp=roots(deng)
hz=roots(numh)
hp=roots(denh)
pzmap(numg, deng)
%pzmap(numh, denh)