num1=[150 30 180];
den1=conv([0 1 0],conv([0 1 3],[.01 .1 1]));

num2=[20 20 20];
den2=conv([0 1 0],conv([0 1 2],[.01 .1 1]));

G1=tf(num1,den1);
G2=tf(num2,den2);
figure;
bode(G1);
figure;
bode(G2);

w1=logspace(-3,3)
w2=logspace(-2,2)

[mag1, phase1]=bode(num1, den1, w1);
[mag2, phase2]=bode(num2, den2, w2);

figure;
subplot(4,1,1), plot(w1,mag1);
subplot(4,1,2), plot(w1,phase1);
subplot(4,1,3), plot(w2,mag2);
subplot(4,1,4), plot(w2,phase2);

