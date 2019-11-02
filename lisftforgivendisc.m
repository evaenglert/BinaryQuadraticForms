for d = -32 : -1 
    if mod(d,4) == 0 || mod(d,4) == 1
        reducedstring = '';
        
        reducedform = listreducedforms(d);
        for i = 1: length(reducedform)
             form = reducedform{i};
            a = num2str(form(1));
            b = num2str(form(2));
            c = num2str(form(3));
            if isprimitive([form(1),form(2),form(3)]) == 1
                reducedstring= strcat(reducedstring, '*[', a, ', ', b, ', ', c, ']*, ');
            else
                reducedstring= strcat(reducedstring, '[', a, ', ', b, ', ', c, '], ');

            end
        end
        fprintf('For %d, the form(s) are %s \n', d, reducedstring);
    end
end