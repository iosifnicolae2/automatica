clear

t=[0:0.01:2*pi]
for i=1:length(t)
    
f(i)=sin(2*t(i))*cos(2*t(i));
end

polar(t,f)