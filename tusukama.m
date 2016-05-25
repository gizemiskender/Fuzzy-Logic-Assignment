% tusukama(0.5, 0.6, 0.7, 0.8, ucgen(1,2,3,x), ucgen(1,3,4,x),x)

function tusukama(x1, y1, x2, y2, cikis1, cikis2, x)
    w1 = min(x1, y1);
    w2 = min(x2, y2);
    
    for i=1:length(x)
        if((cikis1(i) >= w1))
            z1 = cikis1(i);
        end
    end
    
    for k=1:length(x)
        if((cikis2(k) >= w2))
            z2 = cikis2(k);
        end
    end
    
    z = (w1*z1 + w2*z2) / w1 + w2;
    fprintf('Tsukamo bulanık sonuçlandırma: %f\n', z);
    
end