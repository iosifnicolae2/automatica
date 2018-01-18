w=0:0.1:30;
k = 1;
wn = 10;
z = 0.7;
num1 = [wn*wn];
den1 = [1 2*z*wn wn*wn];
%elementul de ordinul 2 initial
num2 = [wn*wn/30 wn*wn];
den2 = [1 2*z*wn wn*wn];
%functia de transfer cu zerou suplimentar introdus
Gw1 = bode(num1,den1,w);
Gw2 = bode(num2,den2,w);
plot(w,Gw1,'blue',w,Gw2,'red');

