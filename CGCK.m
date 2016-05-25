function CGCK(veri1, veri2, kural1, kural2, cikis1, cikis2)
 
    sonuc1 = kesisim(veri1, kural1);
    max1 = max(sonuc1);
    
    sonuc2 = kesisim(veri2, kural1);
    max2 = max(sonuc2);
    
    min1 = min(max1, max2);
    
    for j=1:length(cikis1)
        if(cikis1(j) > min1)
            cikis1(j) = min1;
        end
    end
    
    sonuc3 = kesisim(veri1, kural2);
    max3 = max(sonuc3);
    
    sonuc4 = kesisim(veri2, kural2);
    max4 = max(sonuc4);
    
    min3 = min(max3, max4);
    
    for k=1:length(cikis2)
        if(cikis2(k) > min3)
            cikis2(k) = min3;
        end
    end
    
    sonuc = birlesim(cikis1, cikis2);
   
    subplot(3,3,1);
    plot (kural1,'r'); hold on 
    plot (veri1,'m'); hold off
    title('Kural1 ve Veri1 Uzayları');  axis([0 120 0 1])
    
    subplot(3,3,2);
    plot (kural1,'r'); hold on 
    plot (veri2,'m'); hold off
    title('Kural1 ve Veri2 Uzayları'); axis([0 120 0 1])
    
    subplot(3,3,3); plot(cikis1); title('Çıkış1 uzayı'); axis([0 120 0 1])
        
    subplot(3,3,4);
    plot (kural2,'r'); hold on 
    plot (veri1,'m'); hold off
    title('Kural2 ve Veri1 Uzayları'); axis([0 120 0 1])
    
    subplot(3,3,5);
    plot (kural2,'r'); hold on 
    plot (veri2,'m'); hold off
    title('Kural2 ve Veri2 Uzayları'); axis([0 120 0 1])
    
    subplot(3,3,6); plot(cikis2); title('Cıkıs2 uzayı'); axis([0 120 0 1])
    
    subplot(3,3,9); plot(sonuc); title('Bulanık Sonuc'); axis([0 120 0 1])
    
    x = 0.2;
    y = 0.5;
    subplot(3,3,7); 
    plot(x,'r'); hold on 
    plot(y, 'm'); hold off
    legend ('Kural', 'Veri'); 
    axis([0 120 0 1]);
    
end