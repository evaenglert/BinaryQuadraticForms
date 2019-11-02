function [order] = ordercalculator(form)
%ORDERCALCUALTOR calculates the order of a primitive form
%   in the class group

a = form(1);
b = form(2);
c = form(3);
disc = b^2 -4*a*c;

if mod(disc, 4) == 0
    identity = [1, 0, -disc/4];
elseif mod(disc, 4) == 1
    identity = [1, 1, (1-disc)/4];
end

order = 1;
original_form = form;
while form(1) ~=identity(1) || form(2) ~=identity(2) || form(3) ~=identity(3)
    form = composition(form, original_form);

    form = reduction(form);

    order = order + 1;
end

end

