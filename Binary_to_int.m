function [num] = Binary_to_int(binary)
    num=0;
    L = length(binary);
    for i=1:L
        num = num + binary(i)*2^(i-1);
    end
end