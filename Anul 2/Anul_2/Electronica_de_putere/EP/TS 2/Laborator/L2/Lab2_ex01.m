w=0:0.01:30;
k=1;
t=0.2;
Gw1=k./(sqrt(1+t^2*w.^2))
subplot(121)
plot(w,Gw)

k=1;
z=0.7;
wn=10;
Gw2=k*wn*wn./(sqrt((wn*wn-w.*w).^2+4*z*z*wn*wn*w.^2))
subplot(122)
plot(w,Gw2)

