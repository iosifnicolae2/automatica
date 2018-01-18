function [sys,x0,str,Te]=ee2(t,x,u,flag)
A=[0 -0.25;1 1];
B=[1;1];
C=[0 1];

%Daca flag=1 returneaza derivatele
if flag==1
    sys=A*x+B*u;
%Daca flag=3 returneaza iesirile
elseif flag==3
    sys=C*x;
%Daca flag=0 ini?ializ?ri
    % sys(1)- nr starilor continue;
    % sys(2)- nr starilor discrete;
    % sys(3)- nr iesirilor;
    % sys(4)- nr intrarilor;
    % sys(5)- alocat pentru g?sirea r?d?cinilor;
    % sys(6)- flagul de acces direct al m?rimii de
    %intrare;
    % sys(7)-  num?rul momentelor de e?antionare.
elseif flag==0
    sys=[2,0,1,1,0,0,0];
    x0=0;str=[];
    Te=[];
%In alte conditii nu returneaza nimic
else sys=[];
end
