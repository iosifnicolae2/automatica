Fi=[0.5 1 2;0 0.5 1;0 0 0.5];
Gama=[1 0;0 0;0 1];
C=[1 0 0 ;0 0 1];
D=[0 0  ;0 0 ];
t=0:10;
t1=1:10;
dstep(Fi,Gama,C,D,1,t);
dstep(Fi,Gama,C,D,2,t);