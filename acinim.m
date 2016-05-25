% fonksiyon cağrımı --> acinim(ucgen(1,2,3,x), x, 1, 3, 5)
% x = x=(-5:0.1:5); 

function [a_x, a_y] = acinim(func, x, a, b, c)

a_x = a*x.^3 + b*x + c; % ax^3 + bx + c

a_y = func;

for j = 1:length(a_x)
    for i=1:length(a_x)
       if(a_x(j) == a_x(i))
           a_y(j) = max(a_y(j), a_y(i));
           a_y(j) = a_y(i);
       end
    end
end
    % açınım uygulanacak üyelik fonksiyonu
    subplot(2,1,1);
    plot(func, 'r');
    axis([0 300 0 1]);
    
    
    % açınım uygulandıktan sonra üyelik fonksiyonu
    subplot(2,1,2);
    plot(a_x, a_y, 'm');
    axis([0 300 0 1]);    
    
end