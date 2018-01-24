x = csvread("x1.csv");
y = csvread("y1.csv");

X = [x.^1 x.^0];
a = inv(X'*X)*X'*y
% figure
% plot(x,y,'.', x,a(1)*x+a(2))

x2 = csvread("x2.csv");
y2 = csvread("y2.csv");


X2 = [x2.^2 x2.^1 x2.^0];
a2 = inv(X2'*X2)*X2'*y2
% figure
% plot(x2,y2,'rx', x2,a2(1)*x2.^2 +a2(2)*x2 + a2(3),'b.')


x3 = csvread("x3.csv");
y3 = csvread("y3.csv");

X3 = [x3(:,1).^0 x3(:,1) x3(:,2) x3(:,1).*x3(:,2) x3(:,1).^2.*x3(:,2) x3(:,1).*x3(:,2).^2 x3(:,1).^2.*x3(:,2).^2];
a3_input = inv(X3'*X3)*X3'*y3;


a1 = a3_input(1);
a2 = a3_input(2);
a3 = a3_input(3);
a4 = a3_input(4);
a5 = a3_input(5);
a6 = a3_input(6);
a7 = a3_input(7);


f = @(x,y) a1+a2.*x+a3.*y+a4.*x.*y+a5.*x.^2.*y+a6.*x.*y.^2+a7.*x.^2.*y.^2;

[X Y] = meshgrid(sort(x3(:,1)), sort(x3(:,2)));
scatter3(x3(:,1),x3(:,2),y3,'+')
hold on;
surf(X,Y,f(X,Y),'EdgeColor','none','FaceAlpha',0.5)


