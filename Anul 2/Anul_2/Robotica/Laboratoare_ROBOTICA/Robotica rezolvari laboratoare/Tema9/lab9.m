L(1)=Link([0,0,1,0,0]); 
L(2)=Link([0,1,0,0,1]);
L(3)=Link([0,0,1,0,0]);
ro=SerialLink(L,'name','robot');
ro.fkine([0,0,0]);
ro.plot([pi/2,pi/4,0]);
T1=transl([0.7 0.3 0.3]);%*trotx(pi/2);
T2=transl([1 -0.3 1.5]);%*trotx(pi/2);

q1=ro.ikine(T1,[0,0,0],[1,1,1,0,0,0])
q2=ro.ikine(T2,[0,0,0],[1,1,1,0,0,0])
t=[0:0.05:2];
[q,dq,ddq]=jtraj(q1,q2,t);
ro.plot(q);

figure;qplot(t,q); title 'Pozitiile';
figure;qplot(t,dq); title 'Vitezele';
figure;qplot(t,ddq); title 'Acceleratiile';