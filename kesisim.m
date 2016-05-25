% bulanik islemler icinden çağırmak icin yazıldı
% fonksiyon cagrısı: kesisim(uyelik_fon1, uyelik_fonk2)

function sonuc = kesisim(varargin)
    args = varargin;
    a = args{1}; % birinci argüman
    b = args{2}; % ikinci argüman
    sonuc = min(a, b); % kesisimi hesapla ve döndür
end