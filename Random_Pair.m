function [rd]=Random_Pair(limit)
    num1 = round(rand()*(limit-1)+1);
    rd = [];
    rd = [rd; num1];
    num2 = round(rand()*(limit-1)+1);
    if(num1==num2)
        num2 = mod(num2+1,limit)+1;
    end
    rd = [rd; num2]; 
    rd = sort(rd);
end