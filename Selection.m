function [newPop]=Selection(fit, Pop)
    newPop = [];
    maximo = max(fit);
    ind = 1;
    optimos = round((length(fit)*66.6)/100);
    while(size(newPop,1) ~= optimos)
        if(fit(ind) == maximo)
            fit(ind) = 0;
            newPop = [newPop; Pop(ind,:)];
            maximo = max(fit);
            ind = 0;
        end
        ind = ind+1;
    end
end