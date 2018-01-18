k=[0:0.5:12]
num=1
den=conv([1 1],conv([1 3-j],[1 3+j]))
 rlocus(num,den,k)