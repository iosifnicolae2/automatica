t=[0:0.05:4];
A=[0 1 0;0 1 1;-1 -2 -3];
B=[10;0;0];
C=[1 0 0];
D=[0];

[n,d]=ss2tf(A,B,C,D);
i=[1 0 0;0 1 0;0 0 1];

expm(A)
g=tf(n,d);

M=ctrb(A,B)
if rank(M)>0
        disp('Controlabil')
else 
    disp('Necontrolabil');
end;
N=obsv(A,C)
if rank(N)>0
        disp('Observabil')
else 
    disp('Neobservabil');
end;
