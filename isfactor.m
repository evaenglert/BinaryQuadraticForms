 function [answer] = isfactor(bqf, N)
 	A = bqf(1);
    B = bqf(2);
    if mod(N, A) == 0 && A ~=1
    	answer = 1;
    else 
    	answer = 0;
    end
end