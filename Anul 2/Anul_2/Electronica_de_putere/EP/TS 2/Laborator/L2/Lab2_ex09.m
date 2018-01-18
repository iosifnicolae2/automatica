w=0:0.1:30;

p1=[-5+5*j -5-5*j]';
z1=[-5+15*j -5-15*j]';
[num1, den1] = zp2tf(z1,p1,1/5);
%elementul de ordinul 2 initial

p2=[-5+15*j -5-15*j]';
z2=[-5+5*j -5-5*j]';
[num2, den2] = zp2tf(z2,p2,0.5);
%functia de transfer cu zerou suplimentar introdus
Gw1 = bode(num1,den1,w);
Gw2 = bode(num2,den2,w);
plot(w,Gw1,'blue',w,Gw2,'red');

