L(1)=Link([0,0.5,0.3,0,0]);
L(2)=Link([0,0.2,0.4,pi/2,0]);
L(3)=Link([0,0.2,0.4,0,0]);
ro=SerialLink(L);

ro.fkine([0,0,0])
%ro.plot([0,0,0]);
t1=transl(1.1,-0.2,0.7);
t2=transl(1.1,-0.2,0.7)*trotx(7*pi/12)*troty(pi/4);
q1=ro.ikine(t1,[0,0,0],[1,1,1,0,0,0]);
q2=ro.ikine(t2,[0,0,0],[1,1,1,0,0,0]);
t=[0:0.05:2];
[q,dq,ddq]=jtraj(q1,q2,t);
ro.plot(q);
figure;qplot(t,q); title 'Pozitiile';
figure;qplot(t,dq); title 'Vitezele';
figure;qplot(t,ddq); title 'Acceleratiile';