function [ind] = Mutation(ind, pro)
    if(rand()< pro)
        i = round(rand()*(29-1)+1);
        ind(i) = xor(ind(i),1);
    end    
end