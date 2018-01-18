nums=[6 0 1]
dens=[1 3 3 1]
numr1=[1 1]
numr2=[1 2]
numr=conv(numr1,numr2)
denr1=[1 2i]
denr2=[1 -2i]
denr3=[1 3]
denraux=conv(denr1,denr2)
denr=conv(denraux,denr3)
z=roots(nums)
p=roots(dens)
pzmap(nums,dens)
z2=roots(numr)
p2=roots(denr)
pzmap(numr,denr)
num=conv(nums,denr)
den=conv(dens,numr)
z3=roots(num)
z4=roots(den)
pzmap(num,den)