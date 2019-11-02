for d= -120 : -1
    if mod(d,4) == 0 || mod(d,4) == 1
        reduced = length(listreducedforms(d));
        [primitive, ~] = listprimforms(d);
        fprintf('d = %d, %d, h(%d)= %d \n', d, reduced, d, primitive);
    end
end
