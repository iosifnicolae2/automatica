t=lspb(10,0.01,20);
[q0,qf,qdd]=lspb(0,pi/2,t,0.25);
figure;
subplot(3,1,1);plot(t,q0,'lineWidth',3);grid; xlabel('discretizarea'); ylabel('q0')
subplot(3,1,2);plot(t,qf,'lineWidth',3);grid; xlabel('discretizarea'); ylabel('qf')
subplot(3,1,3);plot(t,qdd,'lineWidth',3);grid; xlabel('discretizarea'); ylabel('qdd')

save pozitie q0
save viteZa qf
save acceleratie qdd 