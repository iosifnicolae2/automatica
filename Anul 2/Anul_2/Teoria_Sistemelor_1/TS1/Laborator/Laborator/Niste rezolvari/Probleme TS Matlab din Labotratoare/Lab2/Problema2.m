f=[4 0 -2 0 3 -1 4];
g=[0 0 0 0 2 5 -16];
s=f+g	
d=f-g
a=polyval(f,3)-polyval(g,7)
b=[1 3 4 9]
polyval(f,b)
polyval(g,b)
prod=conv(f,g)
g=[2 5 -16];
[cat,rest]=deconv(f,g)
deriv1=polyder(conv(f,g))
deriv2=polyder(cat)
rad1=roots(f)
rad2=roots(g)