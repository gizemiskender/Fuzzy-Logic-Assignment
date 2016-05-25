function y=limiter(alt,ust,x)
% C(2001) - Doç. Dr. Ýsmail H. ALTAÞ
% Bir deðiþkenin alt ve üst sýnýrlarý 
% arasýnda kalmasýný saðlar
if x <= alt
   y=alt;
elseif x>= ust
   y=ust;
else
   y=x;
end
