function y=limiter(alt,ust,x)
% C(2001) - Do�. Dr. �smail H. ALTA�
% Bir de�i�kenin alt ve �st s�n�rlar� 
% aras�nda kalmas�n� sa�lar
if x <= alt
   y=alt;
elseif x>= ust
   y=ust;
else
   y=x;
end
