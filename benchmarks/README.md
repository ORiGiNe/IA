# Utilisation de l'objet _Benchmark_ :

 * création : _var b = Benchmark.new("nom du benchmark");_
 * fonction à benchmarker : _b.core = function { <ma fonction> };_
 * calcul : _b.run(<nombre de tests>);_
 * affichage des résultas : _b.print;_

## Options

 * _Benchmark.preprocess_ peut contenir une fonction à exécuter une fois avant le benchmark
