w=0:0.1:30;
for z=0.5:0.1:0.9,
   k = 1;
   wn = 10;
   num = [k*wn*wn];
   den = [1 2*z*wn wn*wn];
	Gw = bode(num,den,w);
	subplot(121)
	plot(w,Gw);hold on
end
for wn=5:1:20,
	k	= 1;
   z = 0.7;
   num = [k*wn*wn];
   den = [1 2*z*wn wn*wn];
	Gw = bode(num,den,w);
	subplot(122)
	plot(w,Gw);hold on
end