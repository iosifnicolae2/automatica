numg1=[10]%exista ER0
deng1=[1 10 0]
numg2=[1 0]%nu exista ER0
deng2=[1 2]
nz=[1 0]
dz=[1 -1]

[n1,d1]=c2dm(numg1,deng1,1,'zoh')

[nn2,dd2]=c2dm(numg2,deng2,1,'zoh')
[ng2,deng2]=series(nz,dz,nn2,dd2)

[n,d]=series(ng2,dg2,n1,d1)

printsys(n,d,'z')
