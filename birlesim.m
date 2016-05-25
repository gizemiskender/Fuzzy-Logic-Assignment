% bulanik islemler icinden çağırmak icin yazıldı
% fonksiyon cagrısı: birlesim(uyelik_fon1, uyelik_fonk2)

function sonuc = birlesim(varargin)
    args = varargin;
    a = args{1}; % birinci argüman
    b = args{2}; % ikinci argüman
    sonuc = max(a,b); % birlesimi hesapla
end
