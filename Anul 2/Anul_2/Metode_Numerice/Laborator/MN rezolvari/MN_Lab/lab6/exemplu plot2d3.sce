//Exemplu plot2d3

n=6;
x=(0:n)';
y=binomial(0.5,n)';

plot2d3(x,y,style=2,frameflag=5,rect=[-1,0,n+1,0.32])
xtitle("Exemplu de grafic cu plot2d3")
