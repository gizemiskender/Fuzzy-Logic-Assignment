% x=(-5:0.1:5);
% fonksiyon çağrısı: gaussian(0.5, 0.4, x)

function gauss = gaussian(tepe, w, x)
    a = (x-tepe)/w;
    b = -(1/2)*(a.^2);
    gauss = exp(b);
end