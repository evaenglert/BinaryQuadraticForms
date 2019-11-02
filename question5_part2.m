d= -65403;

group = '';
[order, elements] = listprimforms(d);
orderofelements = [];
for j = 1:order
    neworder = ordercalculator(elements{j});
	orderofelements = [orderofelements, neworder];
end
if ismember(48, orderofelements)
    group = 'c48';
elseif ismember(24, orderofelements) && ~ismember(48, orderofelements)
    group = 'c2*c24';
elseif ~ismember(12, orderofelements)
    group = 'c2*c2*c2*c6';
else 
    count = 0;
    for i = 1:order
        if orderofelements(i) == 4
            count = count +1;
        end
    end

    if count == 8
        group = 'c2*c2*c12';
    elseif count == 12
        group = 'c4*c12';
    end
end
fprintf('For %d, the class group is isomorphic to %s \n', d, group);


d= -71411;

group = '';
[order, elements] = listprimforms(d);
orderofelements = [];
for j = 1:order
    neworder = ordercalculator(elements{j});
	orderofelements = [orderofelements, neworder];
end

if ismember(81, orderofelements)
    group = 'c81';
elseif ismember(27, orderofelements) && ~ismember(81, orderofelements)
    group = 'c3*c27';
elseif ~ismember(9, orderofelements)
    group = 'c3*c3*c3*c3';
else 
    count = 0;
    for i = 1:order
        if orderofelements(i) == 9
            count = count +1;
        end
    end    
    if count == 54
        group = 'c3*c3*c9';
    elseif count == 72
        group = 'c9*c9';
    end
end
fprintf('For %d, the class group is isomorphic to %s \n', d, group);


d= -118843;

group = '';
[order, elements] = listprimforms(d);
orderofelements = [];
for j = 1:order
    neworder = ordercalculator(elements{j});
	orderofelements = [orderofelements, neworder];
end

if ismember(49, orderofelements)
    group = 'c49';
else
    group = 'c7*c7';
end
fprintf('For %d, the class group is isomorphic to %s \n', d, group);
