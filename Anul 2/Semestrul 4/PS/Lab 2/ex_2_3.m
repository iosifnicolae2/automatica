w=0:0.1:30; 
z1 = [-2+j; -2-j]; p1=[-5+10*j -5-10*j]; 
z2 = [-5+10*j; -5-10*j]; p2 = [-2+j -2-j]; 
k = prod(p); 
[num1, den1] = zp2tf(z1,p1,k);
Gw1 = bode(num,den,w);
[num2, den2] = zp2tf(z2,p2,k);
Gw2 = bode(num_,den_,w);

subplot(2,1,1); plot(w,Gw1);hold;pzmap(num1, den1); title('caz 1');
subplot(2,1,2); plot(w,Gw2);hold;pzmap(num2, den2); title('caz 2');