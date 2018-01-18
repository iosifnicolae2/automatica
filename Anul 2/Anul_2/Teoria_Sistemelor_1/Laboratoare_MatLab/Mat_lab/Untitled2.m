Te = 0.001; 
%perioada de generare - similara cu perioada de esantionare
t = 0:Te:3; 
%vectorul timpului - momentele de prelevare de semnal
f = 10; 
%frecventa semnalului
w = 2*pi*f;	
%pulsatia semnalului
a = 2; 
%amplitudinea semnalului
x = a*sin(w*t); 
%semnalul generat / inregistrat in vectorul x
plot(t,x) 
%prezentarea grafica a semnalului x
