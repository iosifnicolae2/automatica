
wp=10
Gp=0.794
ws=20
Gs=0.1

GpdB=20*log10(Gp)
GsdB=20*log10(Gs)

[N1, wn1]=buttord(wp,ws,GpdB,GsdB,'s')

[num1, den1]=butter(N1,wn1,'s')

w=0:0.01:30
[mag,phase]=bode(num1,den1,w)
plot(w,mag,[wp ws],[Gp Gs],'o')
grid
[z,p,k]=buttap(2)

[num,den]=zp2tf(z,p,k)
