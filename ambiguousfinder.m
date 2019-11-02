function [ambforms] = ambiguousfinder(d)
%AMBIGUOUSFINDER finds all ambiguous reduced primitive forms for given discriminant d
%   
[~, allforms] = listprimforms(d);
 ambforms = {};
for i = 1:length(allforms)
    form = allforms{i};
    if form(1) == form(2) || form(1) == form(3) || form(2) == 0
        ambforms = [ambforms, form];
    end
end


end

