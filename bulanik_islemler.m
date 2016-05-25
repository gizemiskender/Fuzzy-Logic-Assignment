% birlesim, kesisim ve degilleme bulanık islemleri icin yazdıldı
% fonksiyon çağrısı: bulanık_islemler( uyelik_1, uyelik_2)

function bulanik_islemler(func1, func2, x)
    u1 = func1; % birinci uyelik fonksiyonu
    u2 = func2; % ikinci uyelik fonksiyonu
    
    iliski_birlesim = birlesim(u1, u2); % iki liskinin birlesimi
    iliski_kesisim = kesisim(u1, u2);   % iki iliskinin kesisimi
    iliski_degilleme = degilleme(u1);   % iliskinin degili
    
    subplot(3,2,1);
    plot (x,u1,'r');hold on 
    plot (x,u2,'m'); hold off
    axis([0 10 0 1.05]);
    legend ('A','B');
    title('A ve B bulanık kümeleri')
    
    % birlesim grafigi
    subplot(3,2,2);
    plot(x, iliski_birlesim,'color','r','linewidth',1)
    title('Birlesim');
    
    % kesisim grafigi
    subplot(3,2,3);
    plot(x, iliski_kesisim,'color','b','linewidth',1)
    title('Kesisim');
    
    % degilleme grafigi
    subplot(3,2,4);
    plot(x, iliski_degilleme,'color','m','linewidth',1)
    title('Degilleme (A)');
    
end
