% tek girişli tek kurallı bulanık sonuçlandırma
% giris: TGTK(ucgen(1,1.7,3,x), ucgen(1,3,4,x),yamuk(-3.5,-0.5,0.5,2.5,x))

function TGTK(veri, kural, cikis)

    ilk_cikis = cikis;
    sonuc = kesisim(veri, kural); % veri ve kural kümelerinin kesisimi alınır
    max_k = max(sonuc); % sonuc kümesinin max. noktasi bulunur.
    
    for j=1:length(cikis)
        if(cikis(j) > max_k)
            cikis(j) = max_k;
        end
    end
    
    subplot(3,1,1);
    plot (kural,'r'); hold on 
    plot (veri,'m'); hold off
    title('Kural ve Veri Uzayları');
    legend ('Veri','Kural');
    subplot(3,1,2); plot(ilk_cikis); title('Çıkış uzayı');
    subplot(3,1,3); plot(cikis); title('Bulanık sonuç');
         
end

