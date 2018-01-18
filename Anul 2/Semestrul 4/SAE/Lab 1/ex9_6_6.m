numg2=[1]
deng2=[1 1]
numh=[1 0]
denh=[1 2]
[n,d]=series(numh,denh,numg2,deng2)
[nn,dd]=c2dm(n,d,0.1,'zoh')
printsys(nn,dd,'z')