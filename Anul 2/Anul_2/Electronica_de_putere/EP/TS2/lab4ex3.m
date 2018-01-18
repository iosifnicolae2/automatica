num1=1;
den1=[1 1];
num2=1;
den2=[3 1];

w=0:.1:20;
t=0:.01:8;

g=tf(num1, den1);
h=tf(num2, den2);
figure;
freqs(num1, den1, w);

figure
subplot(2,1,1);step(g,1, t);
subplot(2,1,2);step(h,1, t);