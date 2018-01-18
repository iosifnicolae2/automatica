k=2
wn=5
zeta=0.7
[num,den]=c2dm([k*wn^2],[1 2*zeta*wn wn^2],1/50,'zoh')
printsys(num,den,'z')
