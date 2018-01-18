A=[0 1;-25 -4]
B1=[1; 1]
B2=[0; 1]
C1=[1 0]
C2=[0 1]
D=[0]
subplot(2,2,1)
bode(A,B1,C1,D)
subplot(2,2,2)
bode(A,B2,C1,D)
subplot(2,2,3)
bode(A,B1,C2,D)
subplot(2,2,4)
bode(A,B2,C2,D)