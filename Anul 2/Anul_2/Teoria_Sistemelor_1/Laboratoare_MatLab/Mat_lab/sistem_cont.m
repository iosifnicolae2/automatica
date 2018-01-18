function[sys,x0,str,Te]=sistem_cont(t,x,u,flag)
R=2;
L=0.05
A=[-R/L];
B=[1/L];
C=[1];
D=[0];
if flag==1
    sys=A*x+B*u;
elseif flag==3
    sys=C*x;
elseif flag==0
    sys=[1,0,1,1,0,0,0];
    x0=0;
    str=[];
    Te=[];
else sys=[];
end