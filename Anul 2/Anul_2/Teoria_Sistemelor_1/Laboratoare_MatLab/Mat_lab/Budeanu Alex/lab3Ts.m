%Exercitiul 6.4.5 


% clc
% clear
% 
% 
% num=[10];
% den=[1 3 2 0];
% 
% w=logspace(1,-2);
% 
% nyquist(num,den,w);

%Exercitiul 7.3.1

% clc
% clear
% x=conv([1 1],[1 3-j]);
% y=conv(x,[1 3+j]);
% num=[1];
% den=[y];
% rlocus(num,den)

%Exercitiul 7.3.2

% clc
% clear
% num=[1 1];
% den=[1 5];
% 
% num1=[2];
% den1=[1 2 0 0];
% 
% [numP,denP]=series(num,den,num1,den1);
% 
% 
% [r,k]=rlocus(numP,denP)