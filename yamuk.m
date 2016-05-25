% x=(-5:0.1:5);
% fonksiyon çağrısı: yamuk(1,2,3,4,x)

function mu_yamuk = yamuk(x1, t1, t2, x2, x)
    a = (x-x1)/(t1-x1);
    b = 1;
    c = (x2-x)/(x2-t2);
    d = 0;
    YAM = min(a, c);
    mu_yamuk = max(min(YAM,b),d);
end