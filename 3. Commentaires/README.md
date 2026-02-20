![Les commentaires en dart](../assets/Formation%20en%20dart%20-%20Commentaire.png)
Les commentaires en dart
---

## Écrire des commentaires
Lorsqu'on écrit du code en programmation il est important de prendre en compte le code la scalabité du code. Un commentaire est un marquer qui servira à indiquer le pourquoi, à quoi çà sert et comment cela s'utilise ici. En dart on retrouve 3 façon d'écrire un commentaire :
- Le double slash <code>//</code> pour écrire des commentaires sur un ligne :

````dart
// Ceci est un commentaire sur une ligne
print('Hello world');
````
- Le slash astérisque <code>/* */</code> pour écrire des commentaires sur plusieurs ligne :
````dart
/*
    Ceci est un code sur plusieur ligne
    Ça c'est la deuxième ligne
    Ça c'est la troisième ligne
*/
print('Hello world');
````

- Le triple slash <code>///</code> pour rédiger la documentation sur une ligne que nous verrons plus tard dans la suite.

## Générer une documentation
Pour génerer automatiquement une documentation dart possède un package <code>doc</code> qui génère de facon automatique des fichiers html qui présentant les différentes fonctions et code présent dans les fichiers du dossier <code>lib</code>.Pour commencer créer un projet dart nommé <code>"comment_and_doc"</code> en utilisant la commande suivante :

````bash
$ dart create comment_and_doc
````

Un fois le project créer si vous regarder les fichiers vous remarquerez que seul 4 dossiers sont présents. Les dossiers <code>.dart_tool/</code>, <code>bin/</code>, <code>lib/</code>, <code>test/</code>. Retenez les biens car dans la suite ils sont importants. Maintenant nous allons  gérer notre documentation et pour cela ouvrez un terminal et lancer la commande suivante :

````bash
$ dart doc .
````
![Projet créer](../assets/First%20doc%20generation.png)

On remarque ici qu'un dossier <code>doc/api</code> a été créer. Dans ce dossier on retrouve des fichiers html et json contenant la documentation. Pour voir le résultat lancer les commandes suivantes :

````bash
$ dart pub global activate dhttpd
````

La commande suivante vas lancer le téléchargement du package `dhttpd` qui permet de simuler un serveur avec le language dart. Elle nous permettra de lire notre documentation dans un navigateur. 

Une fois le téléchargement finit lancer la commande suivante pour démarrer le serveur :

````bash
$ dart pub global run dhttpd --path doc/api
````

Cette commande vas lancer le serveur de documentation sur le port 8080 et pour voir votre documentation rechercher cette adresse dans votre navigateur [http://localhost:8080](http://localhost:8080). Cela devrait vous rendre ceci :

![Home page de la documentation](../assets/Dart%20-%20Doc%20home.png)

Sur cette page vous allez retrouvez à droite dans la sidebar et dans la page central une liste de tous les fichiers présent dans votre dossier `lib/`. Chaque fichier contient des `fonctions` et `class` qui seront documenter. Pour mieux voir créer un second fichier dans le dossier `lib` nommé `bibliotheque_2.dart` comme sur l'image ci-dessous.

![Fichier bibliotheque_2.dart](/assets/Formation%20dart%20-%20doc1%20bibliotheque_2%20file.png)

Une fois le fichier créer relancer la commande `dart doc .` pour regenerer la documentation puis ````dart pub global run dhttpd --path doc/api```` pour relancer le serveur et rendez-vous sur [http://localhost:8080](http://localhost:8080) pour voir les modifications apporter. Vous verrez apparaître un `bibliotheque_2` dans la liste de biliothèque.

![Doc Home page with library bibliotheque_2](/assets/Formation%20dart%20-%20Doc1%20Home%20page%20with%20bibliotheque_2.png)

Si vous cliquer sur [bibliotheque_2](http://localhost:8080/bibliotheque_2/) vous arriverez sur une page vide avec uniquement pour titre `bibliotheque_2 library` ceci est normal vue que notre `bibliotheque_2.dart` est vide. Par contre si vous vous rendez cette fois ci sur [comment_and_doc](http://localhost:8080/comment_and_doc/) vous remarquerez que nous avons ce rendu :

![comment_and_doc Docs page](/assets/Formation%20dart%20-%20comment_and_doc%20Docs%20page.png)

Si vous aller dans votre fichier `lib/comment_and_doc.dart` vous remarquerez qu'il y a un code avec une fonction portant le nom `calculate`. C'est cette fonction qui est afficher dans la documentation et la lecture nous permet de retenir que cette fonction `calculate` ne prend pas d'arguments ( parenthèse vide `()`) ou de paramètres mais retourne un entier ici par `int`. 

Maintenant supposons que nous souhaitons ajouter une description à notre fonction `calculate`, c'est la qu'entre en jeu les tripples slash ````///````. Elle vont nous permettre de rajouter à la documentation de notre fonction cette description. Nous allons donc commencer par modifier le fichier `comment_and_doc.dart` dans le dossier `lib` en rajoutant des lignes au dessus de la fonction calculate. Vous pouvez juste copier le code suivant dans votre éditeur : 

````dart
/// La fonction ci-dessous retourne une la mulitiplication de
/// 7 * 6 = 42.
/// Vous aurez également remarquez que pour allez à la ligne je rajoute au début ///
// Voici un commentaire sur une seule ligne.
/*
  Voici un commentaire sur plusieurs ligne
*/
int calculate() {
  return 7 * 6;
}
````
Regenerer après cela la documentation et relancer le serveur. Les commande sont [ici](#générer-une-documentation). Une fois la documentation regénérer vous aurez le résultat suivant: 

![Le résultat du code ci-dessus](/assets/Formation%20dart%20doc%20without%20line%20break.png)

On remarque sur l'image ci-dessus que tous ce qui suit les `///` apparait dans la documentation mais sans les retours à ligne . Ceci est due au fait que notre description est transformer en fichier html et pour y remédier ajouter simplement `<br>` pour signaler un retour à ligne. On remarque également que nos autres commentaires sur une ou plusieurs lignes ne s'affiche pas. Par contre si vous cliquer sur `caculate`() vous verrez dans l'implémentation de notre fonction que seul les autres commentaires sont présents. 

![implémentation de la fonction calculate](/assets/Formation%20dart%20-%20calculate%20function%20docs%20impl.png)


## Conclusion

Les commentaires sont une notion en programmation importante car elle représente les gardients de notre mémoire dans notre code grâce aux `//` et `/* */`. Elles servent également à rajouter une desciption à nos fonctions dans notre documentation. Dans le prochains chapitre nous aborderons les variables avec leurs utilités.