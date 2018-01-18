k1 = 0.2;
k2 = 0.5;
w = 0:0.1:30;

nr1 = [k1 10*k1 250*k1];
num1 = [1 10 50];
Gw1 = bode(nr1,num1,w);

nr2 = [k2 10*k2 50*k2];
num2 = [1 10 250];
Gw2 = bode(nr2,num2,w);

subplot(2,1,1);
plot(w,Gw2,'r',w,Gw1,'b');
subplot(2,1,2);
pzmap(nr1,num1);
pzmap(nr2,num2);