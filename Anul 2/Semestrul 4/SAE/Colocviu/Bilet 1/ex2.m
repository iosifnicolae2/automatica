Te = .3;
num = 2;
den = [1 1 0];
% n-are ER0, atunci inmultim cu un s:
den = [1 1];

[n,d]=c2dm(num,den,0.3,'zoh')%trecem in discret G(s)

%inmultim FT discret cu z/(z-1) 
numz=[1 0]
denz=[1 -1]
[ns,ds]=series(numz,denz,n,d)%functia de transfer in sist discret
[n,d]=cloop(ns,ds,-1)
rlocus(n, d);