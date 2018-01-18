num=[0 1 7 2]
den=[1 9 26 24]

[A,B,C,D]=tf2ss(num,den)
i=[1 0 0;0 1 0;0 0 1];
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


