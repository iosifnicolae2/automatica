Te = 0.001;
t = 0:Te:3;
f = 10;
w = 2*pi*f;
a = 2;
x = a*sin(w*t);
plot(t,x)

save Lab1Ex02_semnal1.mat t x 
%salveaza in fisierul semnal.mat valorile momentelor de timp la care se face esantionarea si valorile prelevate ale semnalului
save Lab1Ex02_semnal2.mat Te x 
%salveaza in fisierul semnal.mat perioada de esantionare si valorile prelevate ale semnalului

