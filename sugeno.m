function sugeno(x1, y1, x2, y2, p, q, r)
    w1 = min(x1, y1);
    w2 = min(x2, y2); 
    
    z1 = p*x1 + q*y1 + r;
    z2 = p*x2 + q*y2 + r;
    
    z = (w1*z1 + w2*z2) / (w1 + w2);
    
    fprintf('sugeno bulanık sonuçlandırma: %f \n', z);

end