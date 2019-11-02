function [answer] = isequivalent(form1,form2)
%ISEQUIVALENT decides whether two forms are equivalent or not

if reduction(form1) == reduction(form2)
    answer = 1;
else 
    answer = 0;

end

