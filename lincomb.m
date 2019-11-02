function [coeff] = lincomb(a,b)
%LINCOMB expresses the gcd of a and b as a linear combination of those
%   two numbers.
%  
a_old = a;
b_old = b;
signa = sign(a);
signb = sign(b);
a = abs(a);
b = abs(b);

%Degenerate cases
if a == 0
    gcd = b;
    coeff = [0, signb*1];
elseif b == 0
    gcd = a;
    coeff = [signa*1, 0];
    
elseif a==b
    gcd = a;
    coeff = [signa*1, 0];
 
%Nondegenerate case    
else
    if a<b
        c=a;
        a=b;
        b=c;
    end
    
    [gcd,q,~,i]=euclid(a,b);

    R1=[1,0];
    R2=[0,1];
    j=1;

    while j<i-1
        R3=R2;
        R2=R1-R2.*q(j);
        R1=R3;
        j=j+1;
    end
    

    if abs(a_old)>abs(b_old)
        R2(1) = signa * R2(1);
        R2(2) = signb * R2(2);
        
        coeff=[R2(1), R2(2)];
    else
        R2(2) = signa * R2(2);
        R2(1) = signb * R2(1);        
        
        coeff=[R2(2), R2(1)];
    end

end

end

