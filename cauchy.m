% x=(-5:0.1:5);
% fonksiyon çağrısı: cauchy(0.5, 1, 2, 2.5, x)

function CAUCHY = cauchy(tepe, d, m, x)
    power1= 2 * m;
    CAUCH = ((x-tepe)/d).^power1;
    CAUCHY=1./(1.+CAUCH);
end