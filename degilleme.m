% bulanik islemler icinden çağırmak icin yazıldı
% fonksiyon cagrısı: degilleme(uyelik_fon1))

function sonuc = degilleme(varargin)
    args = varargin;
    a = args{1}; % birinci argüman
    sonuc = [];
    for k=1:length(a)
        sonuc(k) = 1 - a(k);
    end
end