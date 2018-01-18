//Trasarea pe acelaşi grafic a mai multor curbe care nu au acelaşi
//număr de puncte


x1=linspace(0,1,61)';
x2=linspace(0,1,31)';
x3=linspace(0.1,0.9,12)';
y1=x1.*(1-x1).*cos(2*%pi*x1);
y2=x2.*(1-x2);
y3=x3.*(1-x3)+0.1*(rand(x3)-0.5);//la fel cu y2 dar cu o miperturbatie
ymin=min([y1;y2;y3]);ymax=max([y1;y2;y3]);
dy=(ymax-ymin)*0.05;
dreptunghi=[0,ymin-dy,1,ymax+dy];

plot2d(x1,y1,style=1,frameflag=5,rect=dreptunghi)
plot2d(x2,y2,style=2,frameflag=0)
plot2d(x3,y3,style=-1,frameflag=0)
xtitle("Mai multe curbe pe acelasi grafic") 
