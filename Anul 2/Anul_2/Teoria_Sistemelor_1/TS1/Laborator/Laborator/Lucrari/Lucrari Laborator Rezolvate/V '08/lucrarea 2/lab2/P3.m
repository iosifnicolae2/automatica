f=[4 0 -2 0 3 -1 4]

g=[0 0 0 0 2 5 -16]

%punctul a%
s=f+g

%punctul b%

f=[4 0 -2 0 3 -1 4]

g=[0 0 0 0 2 5 -16]

a=polyval(f,3)-polyval(g,7)

%punctul c%
f=[4 0 -2 0 3 -1 4]

g=[2 5 -16]
a=conv(f,g)
[b,r]=deconv(f,g)
c=polyval(f,3)*polyval(g,7)
%punctul d%
f=[4 0 -2 0 3 -1 4]

g=[0 0 0 0 2 5 -16]
b=a'

d=polyder(conv(f,g))

%punctul e%



e=roots(f)

