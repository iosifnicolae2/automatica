t=[0:0.05:10];
A=[-1 -0.5; 1 0];
B=[0.5;0];
C=[1 0];
D=[0];
subplot(2,1,1)
step(A,B,C,D,1,t)

subplot(2,1,2)
impulse(A,B,C,D,1,t)

