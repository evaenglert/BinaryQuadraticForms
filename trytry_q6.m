for d = -1000 : -1
    if mod(d,4) == 0 || mod(d,4) == 1
        [number, ~] = listprimforms(d);
        ambiguousforms = ambiguousfinder(d);
        ambiguouslength = length(ambiguousforms);
        A = (mod(number, ambiguouslength) == 0 );
        if A == 0
            disp(d);
        end
    end
end