%TESTING OUT FOR RANDOM NUMBERS, WHETHER ALGORITHM REALLY FINISHES
rng(0, 'twister')
for i = 1:100000
    array = zeros(1, 3);
    array(1) = randi([1 1000]);
    array(3) = randi([1 1000]);
    array(2) = randi([-1000 1000]);
    if array(2)^2 - 4*array(1)*array(3) < 0
        disp(array);
        reduction(array);
    end
end