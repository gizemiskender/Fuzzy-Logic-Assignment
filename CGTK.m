% Çift girişli tek kurallı bulanık sonuçlandırma
% fonksiyon cagrısı: CGTK(gaussian(0.7,0.5, x),ucgen(1,1.7,3,x), ucgen(1,3,4,x),yamuk(-3.5,-0.5,0.5,2.5,x))

function CGTK(veri1, veri2, kural, cikis)
    ilk_cikis = cikis;
    
    sonuc1 = kesisim(veri1, kural);
    max_1 = max(sonuc1);
    
    sonuc2 = kesisim(veri2, kural);
    max_2 = max(sonuc2);
    
    min_deger = min(max_1, max_2);
    
    for j=1:length(cikis)
        if(cikis(j) > min_deger)
            cikis(j) = min_deger;
        end
    end
    
    subplot(4,1,1);
    plot (kural,'r'); hold on 
    plot (veri1,'m'); hold off
    title('Kural ve Veri1 Uzayları'); 
    
    subplot(4,1,2);
    plot (kural,'r'); hold on 
    plot (veri2,'m'); hold off
    title('Kural ve Veri2 Uzayları');
    subplot(4,1,3); plot(ilk_cikis); title('Çıkış uzayı');
    subplot(4,1,4); plot(cikis); title('Bulanık sonuç');
    
end