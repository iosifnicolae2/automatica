x=[1 2 3 4 5 6 7 8 9 10];
y=[9 8  5 8 4 6 2 3 5 1];
z=[1.25 5.63 9.8 4.24 7.31];
n=[0:9]

xx=interpln([x;y],z)
disp(xx);
xxx=interp1(x,y,z)
disp(xxx);
xxxx=linear_interpn(z,x,y,"periodic")
disp(xxxx);
