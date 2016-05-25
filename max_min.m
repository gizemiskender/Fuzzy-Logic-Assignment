function C = max_min(varargin)
args = varargin;
A = args{1}; % birinci matris
B = args{2}; % ikinci matris
[n,m] = size(A);
[p,q] = size(B);
C = zeros(n,p); %sonuc matrisi

for k = 1:n
    for j = 1:q
        temp=0;
        for i = 1:p
            temp = max(min(A(k,i),B(i,j)), temp); %max-min işlemi
        end
        C(k,j) = temp;
    end
end
    