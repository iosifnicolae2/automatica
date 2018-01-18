
 %t=[0:.001:.02];
% f=sin(2*pi*50*t);
% plot(t,f,'g-.' )
%g=f+0.2;
%plot(t,g,'r+');
%x=[0:.1:10];
%y=10.^x;
%%semilogy(x,y)
%t=[0:0.01:2*pi];
%f=sin(2.*t)*cos(2.*t);
%polar(f,t,'r+')
%n=linspace(0,20);
%y=sin((2*pi/10).*n);
%stem(n,y,'r+')
%x=[0:.2:6];
%y=sin(x);
%stairs(x,y)
%x=[-5:0.1:5];
%f=x.*abs(x)./(1+x.^2)
%plot(x,f)
%t=[-2:0.01:2];
%x=cos(2*pi*t);
%y=sin(2*pi*t);
%plot(x,y)
%plot3(t,x,y)
%x=[-2:0.01:2];
y=x;
[X,Y]=meshgrid(x,y);
z=X.^2-Y.^2;
mesh(z)
%save nnnn.mat x
load nnnn.mat



