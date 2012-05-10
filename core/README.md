# Radar

## Usage

 * Radar.new(sonars, event)_
   * _sonars_ : liste d'objects _Sonar_
   * _event_ : événement à émetter
 * _Radar.posMonitored_ : liste des positions surveillées (en rapport avec ce que vous avez mis dans Sonar.pos)
 * _Radar.delay_ : délai entre 2 questionnement d'un sonar


## Algorithme

### Groupes de sonars

Le radar entretient un liste de groupes de sonars a surveiller, mise à jour a chaque modification de _posMonitored_. Dans chaque groupe, le premier sonar est le sonar principal qui sera cecké régulièrement, et les autres sont des sonars secondaires qui servent à valider l'info du premier.

### Détection de l'adversaire

Pour chaque groupe de sonars, on lance une tâche de fond qui check à intervalles réguliers (défini par _delay_) _seulement le premier sonar du groupe_ (le sonar principal). Si un adversaire est détecté, on check alors tous les autres sonar du groupe afin de confirmer, puis on émet un événement.

### Création des groupes

On a une liste de positions surveillées donnée par l'utilisateur, ainsi qu'une liste de sonars avec leur position et leur champ de vision. Il faut en déduire les différents groupes de sonars.

On parcourt la liste des positions surveillées. Pour chaque position, on crée un nouveau groupe.

On cherche tous les sonars dont la position est dans le champ de vision, et on les ajoute au groupe. On trie ensuite le groupe du plus proche de la position au plus lointain, pour que le plus proche soit le principal et on l'ajoute à la liste des groupes. On passe à la position suivante.
