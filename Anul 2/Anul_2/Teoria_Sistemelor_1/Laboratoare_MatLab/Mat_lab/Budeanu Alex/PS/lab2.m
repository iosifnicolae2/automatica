%Ex 4 

% clc
% clear
% wn=10;
% zita=0.7;
% z=[-5];
% w=0:0.1:30;
% num=[wn*wn wn*wn*5*1/5];
% den=[1 2*zita*wn wn*wn];
% 
% Gw=bode(num,den,w);
% plot(w,Gw)

%Ex 5 

clc
clear
w=0:0.1:20;
wn=10;
zita=0.7;
k=1/425;
num=[];
den=[];

pzmap(num,den)

% Ex 6
% clc
% clear
% 
% k1=0.2;
% k2=0.5;
% w=0:0.1:30;
% num1=[k1*1 k1*10 k1*250];
% den1=[1 10 50];
% 
% num2=[k2*1 k2*10 k2*50];
% den2=[1 10 250];
% 
% Gw1=bode(num1,den1,w);
% Gw2=bode(num2,den2,w);
% subplot(2,1,1);
% plot(w,Gw2,'r',w,Gw1,'g');
% subplot(2,1,2);
% pzmap(num1,den1);
% pzmap(num2,den2);