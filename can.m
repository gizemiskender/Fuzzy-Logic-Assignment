% x=(-5:0.1:5);
% fonksiyon çağrısı: can(0.5, 1, 2, x)

function can = can(tepe, d, m, x)
    A = (abs((x-tepe)/d)).^(2*m);
    can = 1./(1.+A);
end