function C = kartezyen_carpim(varargin)
    args = varargin;
    n = nargin;
    [F{1:n}] = ndgrid(args{:});
    
    for i=n:-1:1
        G(:,i) = F{i}(:);
    end
    
    C = unique(G , 'rows');
    a = args{1};
    b = args{2};
   
    subplot(221); plot(a, '*');
    subplot(222); p = plot(b,'o'); p(1).Marker = '*';
    subplot(223); mesh(C)
    title('Karezyen çarpım');
end