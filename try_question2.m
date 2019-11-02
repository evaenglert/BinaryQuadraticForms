for d = -50: -8
    if mod(d,4) == 0 || mod(d,4) == 1
        reducedstring1 = '';
        reducedstring2 = '';
        [~, h1] = listprimforms(d);
        [~, h3] = listprimforms(d*3^2);
        [h5, ~] = listprimforms(d*5^2);
        [h7, ~] = listprimforms(d*7^2);
        
        for i = 1: length(h1)
            form = h1{i};
            a = num2str(form(1));
            b = num2str(form(2));
            c = num2str(form(3));

            reducedstring1= strcat(reducedstring1, '[', a, ', ', b, ', ', c, '], ');
        end
            
        for i = 1: length(h3)
            form = h3{i};
            a = num2str(form(1));
            b = num2str(form(2));
            c = num2str(form(3));

            reducedstring2= strcat(reducedstring2, '[', a, ', ', b, ', ', c, '], ');

        end
        fprintf('For %d, %s  and %s \n', d, reducedstring1, reducedstring2);

    end
end