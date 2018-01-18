% a)
%reprezentare reper fix A
A=se2(0,0,0)
figure;axis([-2 6 -2 6]);hold
trplot2(A,'frame','1','color','g')
%reprezentare reper B
B=se2(0,0,pi/2)*se2(2,3,pi/3)*se2(-3,-5,0)
trplot2(B,'frame','2','color','r')

% b)
pb=[2;3]
pa=B*[pb;1]
%plot_point(pb,'*')
plot_point(pa,'*')

