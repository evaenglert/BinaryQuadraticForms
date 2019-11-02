for d = [-231, -663, -1092]

    answer = '';
        
    ambforms = ambiguousfinder(d);
    for i = 1: length(ambforms)
        form = ambforms{i};
        a = num2str(form(1));
        b = num2str(form(2));
        c = num2str(form(3));
    
        answer= strcat(answer, '[', a, ', ', b, ', ', c, '], ');


    end
    fprintf('For %d, the form(s) are %s \n', d, answer);
end