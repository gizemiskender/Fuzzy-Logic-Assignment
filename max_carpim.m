% max_min([1 2 3; 2 3 5],[6 4 ; 2 4; 0 1])

function C = max_carpim(varargin)
args = varargin;
A = args{1}; % birinci matris
B = args{2}; % ikinci matris
[n,m] = size(A);
[p,q] = size(B);
C = zeros(n,p); % sonuc matrisi

for k = 1:n
    for j = 1:q
        temp=0;
        for i = 1:p
            temp = max((A(k,i) * B(i,j)), temp); %max-carpim islemi
        end
        C(k,j) = temp; % sonuc
    end
end
    