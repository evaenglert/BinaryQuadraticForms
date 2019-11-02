data = cell(2,60);
i = 1;

for d = -120: -1
    if mod(d,4) == 0 || mod(d,4) == 1
        [order, elements] = listprimforms(d);
        if ismember(order, [1,2,3,5,6,7,10])
            data{1,i} = d;
            data{2,i} = strcat('c', num2str(order));
        else
            orderofelements = [];
            for j = 1:order
                neworder = ordercalculator(elements{j});
                orderofelements = [orderofelements, neworder];
            end
            
            if order == 4
                if ismember(4, orderofelements)                   
                    data{1,i} = d;
                    data{2,i} = 'c4';
                else
                    data{1,i} = d;
                    data{2,i} = 'c2*c2';
                end
            elseif order == 8
                if ismember(8, orderofelements)
                    data{1,i} = d;
                    data{2,i} = 'c8'; 
                elseif ismember(4, orderofelements) && ~ismember(8, orderofelements)
                    data{1,i} = d;
                    data{2,i} = 'c2*c4';
                else 
                    data{1,i} = d;
                    data{2,i} = 'c2*c2*c2';
                end
            elseif order == 9
                if ismember(9, orderofelements)
                    data{1,i} = d;
                    data{2,i} = 'c9';
                else
                    data{1,i} = d;
                    data{2,i} = 'c3*c3';
                end
            end
            
        end
        
        
    i = i+1;
    end
end

for i = 1:60
    fprintf('%d, %s \n', data{1,i}, data{2,i});
end

