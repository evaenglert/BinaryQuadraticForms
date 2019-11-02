function [answer] = isprimitive(array)
%ISPRIMITIVE decides wheter a binary quadratic form (array)
%   is primitive or not
a = array(1);
b = array(2);
c = array(3);

answer = 1;

for i = 1:a
    if mod(a,i) == 0 && mod(c,i) == 0 && mod(b,i) == 0 && i>1
        answer = 0;
        break;
    end
end

end

