load Lab1Ex02_semnal1.mat 
% incarca valorile pentru timp si valorile inregistrate ale semnalului la aceste momente: t si x
plot(t,x)

pause

load Lab1Ex02_semnal2.mat 
% incarca valorile pentru perioada de esantionare si valorile inregistrate ale semnalului
t = 0:Te:3;
% se obtin momentele de timp cunoscand perioada de esantionare
plot(t,x)


