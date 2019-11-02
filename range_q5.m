possnums = []

for d = -120:-1
    if mod(d, 4) == 0 || mod(d, 4) == 1
        [number, ~] = listprimforms(d);
        possnums = [possnums, number];
    end
end

fprintf('For 0>d>=-120, the order of the class group of discriminant d is between %d and %d \n', min(possnums), max(possnums));
        