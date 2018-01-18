L=0.1;
R=5;
C=0.001;

A=[0,1 ; -1/(L*C),-(R/L)];
B=[0;1/L];
C=[1,0];
D=[0];


sis=syslin('c',A,B,C,D);

FT=ss2tf(sis);
disp(FT);

gs=tf2ss(FT);
disp(gs);


t=[0:0.1:1000];
u=10*sin(314*t);
[y x]=csim(u,t,sis);

plot(t,x)
plot(t,y)
