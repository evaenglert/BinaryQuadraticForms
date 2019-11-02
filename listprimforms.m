function [h, primforms] = listprimforms(d)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
primforms = {};
a = floor(sqrt(abs(d)/3));



while a >= 1
    b = a;
    while b>=0
        c = (b^2-d)/(4*a);
        %when we have 0<= b <= a =c
        if c == floor(c) && a == c && isprimitive([a,b,c]) == 1
            primforms = [primforms, [a, b, c]];
            
        %when we have -a < b <= a < c
        elseif c == floor(c) && a<c && isprimitive([a,b,c]) == 1
            if b==a
                primforms = [primforms, [a, b, c]];
            else 
                if b == 0
                    primforms = [primforms, [a, b, c]];  
                else
                    primforms = [primforms, [a, b, c], [a,-b,c]];
                end
            end
            
            
        end
        b = b-1;
    end
    a = a-1;
end
            
h = length(primforms);

end
