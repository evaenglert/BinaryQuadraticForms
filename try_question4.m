%TRYING OUT FOR DIFFERENT EQUIVALENT BQFs

bqf1 = composition([2,2,3], [1,0,5]);
bqf2 = composition([3, -2, 2], [6, -10, 5]);
disp(reduction(bqf1));
disp(reduction(bqf2));