w=0:0.1:30;

for z=0.5:0.1:0.9,
k=1;
wn=10;
Gw2=k*wn*wn./(sqrt((wn*wn-w.*w).^2+4*z*z*wn*wn*w.^2));
subplot(121)
plot(w,Gw2);hold on
end

for wn=5:1:20,
k=1;
z=0.7;
Gw2=k*wn*wn./(sqrt((wn*wn-w.*w).^2+4*z*z*wn*wn*w.^2));
subplot(122)
plot(w,Gw2);hold on
end