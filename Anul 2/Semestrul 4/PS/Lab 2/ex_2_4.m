w=0:0.1:30; 
z = [-2+1i; -2-1i]; 
p = [-5+10*1i -5-10*1i 4 3 2 1]; 
k = prod(p); 
[num, den] = zp2tf(z,p,k);
Gw = bode(num,den,w);

plot(w,Gw);hold;
pzmap(num, den); 
plot(5, .9, 'r*');  
plot(15, .1, 'r*'); title('FTJ');
