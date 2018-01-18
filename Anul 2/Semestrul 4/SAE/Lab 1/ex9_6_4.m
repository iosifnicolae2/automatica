num=[1]
den=[1 1] %am inmultit s*G(s). Happy now?
numz=[1 0]
denz=[1 -1]
[n,d]=c2dm(num,den,0.3,'zoh')%trecem in discret G(s)

[ns,ds]=series(numz,denz,n,d)%functia de transfer in sist discret
[n1,d1]=cloop(ns,ds,-1)
printsys(n1,d1,'z')

