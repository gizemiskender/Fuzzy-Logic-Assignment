% x=(-5:0.1:5);
% fonksiyon çağrısı: ucgen(0.5, 1, 1.5, x)

function [mu] = ucgen(x1, t, x2, x)
    a=(x-x1)/(t-x1);
    b=(x2-x)/(x2-t);
    c = 0;
    mu = max(min(a,b),c);
end