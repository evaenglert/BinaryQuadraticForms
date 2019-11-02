function [reducedforms] = listreducedforms(d)
%LISTREDUCEDFORMS lists all reduced forms for a given discriminant d
reducedforms = {};
a = floor(sqrt(abs(d)/3));

while a >= 1
    b = a;
    while b>=0
        c = (b^2-d)/(4*a);
        %when we have 0<= b <= a =c
        if c == floor(c) && a == c
            reducedforms = [reducedforms, [a, b, c]];
            
        %when we have -a < b <= a < c
        elseif c == floor(c) && a<c
            if b==a
                reducedforms = [reducedforms, [a, b, c]];
            else 
                if b == 0
                    reducedforms = [reducedforms, [a, b, c]];  
                else
                    reducedforms = [reducedforms, [a, b, c], [a,-b,c]];
                end
            end
            
            
        end
        b = b-1;
    end
    a = a-1;
end
            


end

