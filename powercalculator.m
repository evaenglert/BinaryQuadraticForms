function [outputbqf] = powercalculator(bqf,n)
%POWERCALCULATOR calculates the positive nth power of a
%   binary quadratic form bqf
disc = bqf(2)^2 - 4*bqf(1)*bqf(3);

if mod(disc, 4) == 0
    outputbqf = [1,0, -disc/4];
elseif mod(disc,4) == 1
    outputbqf = [1, 1, (1-disc)/4];
end

for i = 1:n
    outputbqf = composition(outputbqf, bqf);
    outputbqf = reduction(outputbqf);
end


end

