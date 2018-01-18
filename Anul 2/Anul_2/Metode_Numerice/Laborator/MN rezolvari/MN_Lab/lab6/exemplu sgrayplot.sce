//Exemplu Sgrayplot 

x=-10:10;
y=-10:10;
m=rand(21,21);
Sgrayplot(x,y,m,"111",[-20,-20,20,20])
t=-%pi:0.1:%pi;
m=sin(t)'*cos(t);
clf();
Sgrayplot(t,t,m);
