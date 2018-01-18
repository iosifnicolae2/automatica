w=0:0.1:30; 
z = [];
z_ = [-2]; %am adaugat zero -2 
p = [-7+j*5 -7-j*5];
k = prod(p); 
[num, den] = zp2tf(z,p,k);
Gw = bode(num,den,w);
[num_, den_] = zp2tf(z_,p,k);
Gw_ = bode(num_,den_,w);

subplot(2,1,1); plot(w,Gw); title('initial');
subplot(2,1,2); plot(w,Gw_); title('am adaugat un zero');