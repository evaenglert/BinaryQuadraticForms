function [reducedform] = reduction(array)
%REDUCTION takes the array = [a,b,c] of a binary quadratic form
%   and calculates the reduced form of it
a = array(1);
b = array(2);
c = array(3);

%the two possibilities of reduced form in BQF
boolean_reduced1 = -a< b && b <= a && a <c;
boolean_reduced2 = 0<=b && b<=a && a==c;
operations = '';

while ~boolean_reduced1 && ~boolean_reduced2
    if a > c
        a_old = a;
        a = c;
        c = a_old;
        b = -b;
        operations = strcat(operations, 's, ');
        
    elseif a <= c && b>= 0 && b>a
        b_old = b;
        b = b - 2*a;
        c = a - b_old +c;
        operations = strcat(operations, 't-, ');
        
    elseif a <= c && b<= 0 && -b>a
        b_old = b;
        b = b + 2*a;
        c = a + b_old +c;
        operations = strcat(operations, 't+, ');
    elseif a==c && b<0
        b = -b;
        operations = strcat(operations, 's, ');
    elseif b == -a
        b_old = b;
        b = b + 2*a;
        c = a + b_old +c;
        operations = strcat(operations, 't+, ');        
    end

boolean_reduced1 = -a< b && b <= a && a <c;
boolean_reduced2 = 0<=b && b<=a && a==c;
    
end

reducedform = [a,b,c];
%disp(operations);

end

