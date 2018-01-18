x=[-10:0.01:10];
plot(x,f)
function [f]=f(x)
    if x <= -1
        f = 3.*x^2;
    else%if x > -1
        f = (3.*x) ./ (x + 1);
    end
end