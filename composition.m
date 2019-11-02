function [resultbqf] = composition(bqf1,bqf2)
%COMPOSITION calculates the composition of two binary quadratic forms
%  
a1 = bqf1(1);
b1 = bqf1(2);
c1 = bqf1(3);
disc = b1^2-4*a1*c1;

a2 = bqf2(1);
b2 = bqf2(2);
c2 = bqf2(3);


beta = (b1+b2)/2;
gamma = (b2-b1)/2;


%Finding the gcd of a1 and beta and
%writing gcd as linear combination of the two numbers
[m, ~, ~, ~] = euclid(a1, beta);

coefficients = lincomb(a1, beta);
x = coefficients(1);
y = coefficients(2);

%Finding gcd of m and a2
[n, ~, ~, ~] = euclid(m, a2);

possible_inverse = lincomb(m/n, a2/n);
inverse = possible_inverse(1);

z = mod(inverse*(gamma*x-c1*y), a2/n);

a3 = a1*a2/(n^2);
b3 = b1 + 2*a1*z/n;
c3 = (b3^2-disc)/(4*a3);

resultbqf = [a3, b3, c3];


end

