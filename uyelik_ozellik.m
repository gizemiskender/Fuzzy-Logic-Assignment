function uyelik_ozellik(func1, alfa, x)

    y = func1; % uyelik fonksiyonundan dönen y koordinati
    derece = 0;
    
    fprintf('Göbek = ');
    for k=1:length(func1)
        if(func1(k) == 1)
            fprintf('%d  \n', x(k));
        end
    end
    
    fprintf('Gecis Noktalari= ');
    for k=1:length(func1)
        if(y(k) == 0.5)
        fprintf('%f \n', x(k));
        end
    end
    
    fprintf('Sınır= ');
    
    for k=1:length(x)
        if(y(k) == 0 && y(k) == 1)
            fprintf('%f \n', abs(x(k)));
        end
    end
    
    fprintf('Destek= ');
    for k=1:length(x)
        if(y(k) > 0)
            fprintf('%f \n', abs(x(k)));
        end
    end
    
    fprintf('Alfa kumesi= ');
    for k=1:length(x)
        if(y(k) >= alfa)
        fprintf('%f \n', abs(x(k)));
        end
    end
    
    fprintf('Bant genisligi= ');
    for k=1:length(x) 
        if(y(k) >= 0.5)
            fprintf('%.1f \n', abs(x(k)));
        end
    end
    
    fprintf('yukseklik= ');
    
    for k=1:length(x)
        if(y(k) > derece)
            derece = y(k);
        end
    end
    fprintf('%f \n', max(derece));
end