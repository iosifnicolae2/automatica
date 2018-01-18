A=[-3 0;1 0];
B=[1;0];
C=[0 9];
D=[0];
Te=0.1;


[Phi Gama C D]=c2dm(A,B,C,D,Te,'zoh');
[n,d]=ss2tf(Phi, Gama ,C, D,1);
[mag,phase,w]=bode(n,d);
[n1,d1]=cloop(n,d);
h=freqz(n1,d1,w)
plot(abs(h),w)

ct=det(ctrb(Phi,Gama));
%daca ct diferit de 0 atunci este controlabil


