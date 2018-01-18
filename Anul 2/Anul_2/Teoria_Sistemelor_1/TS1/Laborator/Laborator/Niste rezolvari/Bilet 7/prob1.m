function [f]=f(x)
    if x <= -1
        f = x^2+6;
    else 
        f = 3.*x + 1;
    end
end

%x=[-10:0.01:10];
%plot(x,prob1(x))