k=1
[num1,den1]=c2dm([0 0 k],[1 1 0],0.3,'zoh')
[num,den]=cloop(num1,den1,-1)
printsys(num,den,'z')