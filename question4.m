fprintf('Checking whether [6,0,5]o[3,-6,13] is equivalent with [11,10,5]o[10,20,13] \n');
comp1 = composition([6,0,5], [3,-6,13]);
comp2 = composition([11,10,5], [10,20,13]);
fprintf('[6,0,5]o[3,-6,13] = [%d, %d, %d] \n', comp1(1), comp1(2), comp1(3));
fprintf('[11,10,5]o[10,20,13] = [%d, %d, %d] \n', comp2(1), comp2(2), comp2(3));
answer = isequivalent(comp1, comp2);
fprintf('isequivalent([%d, %d, %d], [%d, %d, %d]) = %d \n', comp1(1), comp1(2), comp1(3), comp2(1), comp2(2), comp2(3), answer);
fprintf('');

fprintf('Checking whether [7,3,9]o[7,-3,9] is equivalent with [9,15,13]o[13,15,9] \n');
comp1 = composition([7,3,9], [7,-3,9]);
comp2 = composition([9,15,13], [13,15,9]);
fprintf('[7,3,9]o[7,-3,9] = [%d, %d, %d] \n', comp1(1), comp1(2), comp1(3));
fprintf('[9,15,13]o[13,15,9] = [%d, %d, %d] \n', comp2(1), comp2(2), comp2(3));
answer = isequivalent(comp1, comp2);
fprintf('isequivalent([%d, %d, %d], [%d, %d, %d]) = %d \n', comp1(1), comp1(2), comp1(3), comp2(1), comp2(2), comp2(3), answer);
fprintf('');