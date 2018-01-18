A=[0 1 0; 0 1 1;-1 -2 -3];
B=[10;0;0];
C=[1 0 0];
D=[0];

[n,d]=ss2tf(A,B,C,D);

i=[1 1 1;1 1 1;1 1 1];

x=ctrb(A,B); 
if rank(x)>0 
    disp('Controlabil')
else 
    disp('Necontrolabil');
end;

y=obsv(A,C); 
if rank(y)>0 
    disp('Observabil')
else 
    disp('NU');
end;