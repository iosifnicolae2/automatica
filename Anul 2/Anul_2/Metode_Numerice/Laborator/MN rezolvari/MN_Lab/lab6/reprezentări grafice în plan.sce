//reprezentări grafice în plan
 
function [y]=f(x)
 y=abs(x)
endfunction
x=linspace(-10,10,100);
plot2d(x,f(x))
xtitle('Reprezentarea grafica a functiei modul') 
