t=tpoly(10,0.01,20);
[q,qd,qdd]=tpoly(0,pi/2,t);
subplot(3,3,1);plot(t,q,'lineWidth',3);grid; xlabel('discretizarea'); ylabel('q')
subplot(3,3,3);plot(t,qd,'lineWidth',3);grid; xlabel('discretizarea'); ylabel('qd')
subplot(3,3,5);plot(t,qdd,'lineWidth',3);grid; xlabel('discretizarea'); ylabel('qdd')

save pozitie q
save viteza qd
save acceleratie qdd
