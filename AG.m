function [] =  AG(N, iterations, file)
    it = 1;
    I = imread(file);
    I = im2bw(I,0.5);
    Pop = Ini_Population(N);
    bestFitness = [];
    fitnessAverage = [];
    format = 'Iteracion %d\nEl mejor fitness es: %4.2f \nLa media es: %4.2f\n\n';
    while(it < iterations)
        fit = Fitness(Pop,I);
        bestFitness = [bestFitness, fit(1)];
        fitnessAverage = [fitnessAverage, sum(fit)/N];
        fprintf(format,it,fit(1),sum(fit)/N)
        Pop = Selection(fit,Pop);
        Pop = Crossing(Pop, N);
        it = it + 1;
    end
    Pop = Selection(fit,Pop);
    genes = Extractor_Genes(Pop(1,:));
    ellipse = Ellipse_Generator(genes(1),genes(2),genes(3),genes(4),genes(5));
    Grafic(bestFitness,fitnessAverage,ellipse,I)
end
