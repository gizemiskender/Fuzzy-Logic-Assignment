% x=(-5:0.1:5);
% fonksiyon çağrısı: sinn(0.5, x)

function sinn = sinn(t, x)
    T = 2 * t;
    w = pi/T;
    sinn = abs(sin(w*x));
end