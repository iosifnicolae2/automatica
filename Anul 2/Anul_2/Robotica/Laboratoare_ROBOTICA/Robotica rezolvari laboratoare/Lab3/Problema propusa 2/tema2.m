%2
figure;axis([-1 1 -1 1 -1 1]);hold
c=se2(0,0,0)
r=rotx(pi/2)
trplot(r,'frame','1','color','g')
%pause
figure;
tranimate(r);