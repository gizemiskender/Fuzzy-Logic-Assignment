% fonksiyon çağrımı: 
% mamdani(ucgen(2,4,6,2.2), ucgen(1,1.5,3,1.5), ucgen(1,2,3,1.5), 
% ucgen(1.3, 1.6,3,2.2), x, y, ucgen(2,3,4,x), ucgen(2,3,4,y))
% x=(-10:0.5:10)
% y=(-9:0.5:9) olarak girilmiştir.

function mamdani(A1, B1, A2, B2, x,y, cikis1, cikis2)

        y_a1 = A1;
        y_b1 = B1; 
        min1 = min(y_a1, y_b1);
        
        y_a2 = A2;
        y_b2 = B2;
        min2 = min(y_a2, y_b2);
        
        for j=1:length(cikis1)
            if(cikis1(j) > min1)
                cikis1(j) = min1;
            end
        end
        
        
        for k=1:length(cikis2)
            if(cikis2(k) > min2)
                cikis2(k) = min2;
            end
        end
        
        fprintf('A1 ve B1 minimum çıkısları: %f\n', min1);
        fprintf('A2 ve B2 minimum çıkısları: %f\n', min2);
        
        subplot(1,1,1);
        plot (cikis1,'r'); hold on 
        plot (cikis2,'m'); hold off
        title('Çıkış-1 ve Çıkış-2');  axis([1 50 0 1]);
        
        s1 = 0;
        s2 = 0;
        i = 0;
        m = 0;
        
        % sonuc1 için orta nokta
        for k=1:1:length(x)
           if(cikis1(k) > 0)
               i = i + 1;
               s1 = s1 + k;                              
           end
        end     
       
        % sonuç2 için orta nokta
        for t=1:1:length(y)
           if(cikis2(t) > 0)
               m = m + 1;
               s2 = s2 + t;                              
           end
        end             
        
        orta_nokta1 = s1 / i;
        orta_nokta2 = s2 / m;
        fprintf('orta_nokta1 %f \n',orta_nokta1);
        fprintf('orta_nokta2 %f \n',orta_nokta2);

        % durulaştırma işlemi
        u1 = cikis1(orta_nokta1);
        u2 = cikis2(orta_nokta2);
        z = (u1 * orta_nokta1 + u2 * orta_nokta2) / (u1 + u2);
        fprintf('u1: %f \nu2: %f \nDurulaştırılmış sonuc: %f \n', u1, u2, z);
end