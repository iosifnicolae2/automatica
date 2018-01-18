
[num]=conv([0 1],[1 0])
[den]=conv([1 1],[1 2])
[num1,den1]=c2dm(num,den,0.1,'zoh')
printsys(num1,den1)