clc
clear

%Exercitiul 1 
% num=[0 1 7 2];
% den=[1 9 26 24];
% 
% [A, B, C, D]=tf2ss(num,den)

%Exercitiul 2

% A=[0 1 0;0 1 1;-1 -2 -3];
% B=[10;0;0];
% C=[1 0 0];
% D=[0];
% 
% %a) 
% [num,den]=ss2tf(A,B,C,D,1);
% % b)
% % matricea fundamentala
% syms s
% I=[1*s 0 0;0 1*s 0; 0 0 1*s];
% a=I-A;
% inv(a);
% %c)
% expm(A);
% 
% %d)
% M=ctrb(A,B)
% D=obsv(A,C)

%Exercitiul 3
% t=[0:0.05:10];
% A=[-1 -0.5; 1 0];
% B=[0.5;0];
% C=[1 0];
% D=[0];
% 
% step(A,B,C,D,1,t);
% impulse(A,B,C,D,1,t);

%Exercitiul 4
% t=[0:0.05:4]
% A=[0 1 0;0 0 1; -6 -11 -6];
% B=[1;1;1];
% C=[1 1 0];
% D=[0];
% X=[1;0.5;-0.5];
% u=sin(2*pi*t);
% 
% subplot(2,1,1)
% step(A,B,C,D,1,t)
% subplot(2,1,2)
% lsim(A,B,C,D,u,t,X)

%Exercitiul 5

% q=[1 0 0 0 0;2 1 -6 -7 -8;3 2 0 0 0;4 3 0 0 0;5 4 0 0 0;6 3 0 0 0;7 4 0 0 0;8 5 0 0 0];
% u=1;
% y=1;
% 
% n1=[1];
% d1=[1];
% n2=[0.5];
% d2=[1];
% n3=[4];
% d3=[1 4];
% n4=[1];
% d4=[1 2];
% n5=[1];
% d5=[1 3];
% n6=[2];
% d6=[1];
% n7=[5];
% d7=[1];
% n8=[1];
% d8=[1];
% 
% nblocks=8
% blkbuild
% [A,B,C,D]=connect(a,b,c,d,q,u,y)
% 
% [num,den]=ss2tf(A,B,C,D,u)


%Exercitiul 6

A=[0 1;-25 -4];
B=[1 1;0 1];
C=[1 0;0 1];
D=[0 0;0 0];

[num1,den2,]=ss2tf(A,B,C,D,1)
