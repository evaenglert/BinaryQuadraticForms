function [gcd, q, r, i] = euclid(a,b)
%EUCLID is an implementation of Euclid's algorithm. 
%   The output is the greatest common divisor (gcd)
%   the array q containing the multipliers q_i, and
%   the array r containing the remainders r_i.
q=[];
r=[];
i=1;
R=1;
a = abs(a);
b = abs(b);


if a>=b
    r(1)=a;
    r(2)=b;
else
    r(1)=b;
    r(2)=a;
end

while R~=0
    r(i+2)=mod( r(i), r(i+1) );
    R=r(i+2);
    q(i)=(r(i)-r(i+2))/(r(i+1));
    i=i+1;
end

gcd=r(i);

end

