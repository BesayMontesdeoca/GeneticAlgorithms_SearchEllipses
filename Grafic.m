function [] = Grafic(bestFitness, fitnessAverage, ellipse, I)
    n = length(bestFitness);
    ejey = 0:(n-1);
    subplot(2,1,1)
    plot(ejey,bestFitness)
    title('Mejor fitness en cada iteraci�n')
    subplot(2,1,2)
    plot(ejey,fitnessAverage)
    title('Media de fitness en cada iteraci�n')
    figure;
    Show_Ellipse(ellipse)
    figure;
    imshow(I)
end