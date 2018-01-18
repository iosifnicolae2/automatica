%Definirea lantului cinematic
L(1)=Link([0,0,0.5,0,0]);
L(2)=Link([0,0,0.5,0,0]);
L(3)=Link([pi/2,pi/2,0,pi/2,1]);
ro=SerialLink(L,'name','Robo');
%Cinamatica directa 
P=ro.fkine([0,0,0]);
%figure;ro.plot([0,0,0])
%t1=transl([5,0,0])  ;%*trotx(pi);
%t2=transl([5,0,0])  ;%*trotx(pi/2);

t1=transl(1,0,0);
t2=transl(0.2,0.7,-0.6)*trotx(pi);
%determinarea unghiurilor; Cinematica inversa
q1=ro.ikine(t1,[0,0,0],[1,1,1,0,0,0])
q2=ro.ikine(t2,[0,0,0],[1,1,1,0,0,0])
%ro.plot(q)
t=[0:0.05:2];
[q,dq,ddq]=jtraj(q1,q2,t);
ro.plot(q);

figure;qplot(t,q); title 'Pozitiile';
figure;qplot(t,dq); title 'Vitezele';
figure;qplot(t,ddq); title 'Acceleratiile';