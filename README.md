# GeneticAlgorithms_SearchEllipses
Ejemplo de un algoritmo genético implementado en MATLAB que encuentra elipses en una imagen.

Cuando los problemas combinatorios son excesivamente complejos, con espacios de búsqueda inabordables por métodos analíticos ni fuerza bruta, se hace preciso el uso de técnicas de búsqueda “a ciegas”. Una de las más populares, con origen en la teoría de la evolución de Charles Darwin, que tiene utilidad en multitud de casos son los Algoritmos Genéticos.
En teoría se explican los fundamentos de los algoritmos genéticos. Podemos resumir en que un algoritmo genético sencillo podría programarse siguiendo el siguiente pseudocódigo:

1 – Inicializar la población.

2 – Cálculo del Fitness de cada individuo.

3 – Selección.

4 – Cruce.

5 – Mutación.

6 – Mientras Evaluación de la condición de finalización sea falso, volver a 2.

Hay un elemento esencial en el diseño de los algoritmos genéticos y es la codificación del problema. Existen muchos tipos de codificación, y el tipo escogido determina fundamentalmente el diseño del resto de los operadores.

Objetivo: Partiendo de una imagen binaria de 100 por 100, se trata de encontrar la elipse que mejor se ajuste a la imagen.
