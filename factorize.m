function [k, factor, sequence] = factorize(N)
%FACTORIZE finds a nontrivial factor of N

sequence = {};
k_max = 10;
primes = [3,5,7,11,13,17,19,23,29,31,37,41,43,47];
found = 0;

for k = 1: k_max
    d = -k*N;
    if mod(d,4) == 0 || mod(d,4) == 1
        for trys = 1: 10
        
            %generate random form of disc d
            go = 1;
            while go == 1
                a = randi([1,100], 1);
                for b = 0:a
                c = (b^2-d)/(4*a);
                    if floor(c) == c
                        form = [a,b,c];
                        form = reduction(form);
                        sequence = [sequence, form];
                        go = 0;
                        break;
                    end
                
                end
            end
        
           
           for index = 1: length(primes)
                p = primes(index);
                form = powercalculator(form,p);
           end
           
           sequence = [sequence, form];
            
           for i = 1: 5
                if isfactor(form, N) == 1
                	factor = form(1);
                    fprintf('The factor we have found %d, and k=%d  \n', factor, k);
                    found = 1;
                    break;
                end
                form = composition(form, form);
                form = reduction(form);
                sequence = [sequence, form];
           end
                
            if found == 1
                break;
            end
        end
    end    
    
        if found == 1
            break;
        end
    
end
        

end

