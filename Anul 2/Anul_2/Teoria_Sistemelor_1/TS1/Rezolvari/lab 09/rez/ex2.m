num1=[1 1]
den1=[1 5]
num2=2
den2=conv([1 0 0],[1 2])
[nums,dens]=series(num1,den1,num2,den2)
[nume,dene]=cloop(nums,dens,-1)
[r,k]=rlocus(nume,dene)

