

% Exercitiul 1

% num=[4];
% den=[1 2 4];
% w=[0:.01:3];
% g=freqs(num,den,w)
% 
% plot(w,g)

% Exercitiul 2
% clc
% clear
% 
% num=[10];
% den1=[0 1 2.5];
% den2=[1 2 4];
% den=conv(den1, den2)
% t=[0:.2:4];
% w=[0:.01:3];
% 
% c=step(num,den,t);
% g=freqs(num,den,w);
% 
% 
% 
% subplot(2,1,1)
% plot(t,c)
% subplot(2,1,2)
% plot(w,g)


% Exercitiul 3

% num=[0,0,0,750];
% den=[1,36,205,750];
% t=[0:0.2:2];
% w=[0:0.2:8];
% p=roots(den)
% den1=[0,0,25];
% den2=[1,6,25];
% dena=conv(den1,den2);
% g=step(num,den,t);
% gf=freqs(num,den,w);
% g1=step(num,dena,t);
% gf1=freqs(num,dena,w);
% subplot(4,1,1)
% plot(t,g)
% subplot(4,1,2)
% plot(w,abs(gf))
% subplot(4,1,3)
% plot(t,g1)
% subplot(4,1,4)
% plot(w,abs(gf1))

% Exercitiul 4

num1=[0 150];
num2=[1 0.2];
num3=[1 1];

num4=conv(num1,num2);
num=conv(num4,num3);

den1=[0 1 0];
den2=[0 1 3];
den3=[0.01 0.1 1];

den4=conv(den1,den2);
den=conv(den4,den3)

[a,b,w]=bode(num,den)