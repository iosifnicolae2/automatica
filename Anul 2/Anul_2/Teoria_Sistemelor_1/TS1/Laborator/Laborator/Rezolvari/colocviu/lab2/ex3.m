f=[4 0 -2 3 -1 4]
g=[0 0 0 2 5 -16]
s=f+g
d=f-g
a=polyval(f,3)-polyval(g,7)
b=[1 3 4 9]
polyval(f,b)
polyval(g,b)
conv(f,g)
g1=[2 5 -16]
deconv(f,g1)
t=polyder(f,g)
[r,p]=polyder(f,g)
roots(f)
roots(g)