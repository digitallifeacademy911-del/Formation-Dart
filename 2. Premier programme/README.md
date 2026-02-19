![Premier programme](../assets//Formation%20en%20dart%20-%20Premier%20programme.png)
Premier programme
---
La création d'un project dart se fait soit en utilisant les outils dart ou la méthode manuelle.

### La méthode manuelle 
> Cette méthode consiste à créer manuellement les fichiers de base de l'application. Vous allez dans votre éditeur commencer par :

- #### Créer un fichier dans votre éditeur de code 
![Création manuelle du fichier main.dart](../assets/creation%20manuel.png)

> - #### Ensuite écrivez ce code
<pre title="code de test"><code language="dart">
void main(){
    print('Hello world');
}
</code></pre>

> Le code ci dessus est le code minimal pour afficher 'Hello world' en dart. Il se compose de la fonction <code>main()</code> qui est le point d'entrée de notre application. Ce sont les instructions écrites dans ce fonction que notre compilateur vas venir chercher les instructions et les exécutés dans l'ordre. Le code <code>print('Hello world');</code> vas nous afficher dans la console le message <strong>Hello world</strong> grace à la fonction <code>print()</code>. <br>
Voici ainsi la première façon de créer un programme en dart.
texte

### Création en utilisant les outils dart

> Elle se fait en utilisant la commande <code>dart create <nom_du_projet></code>. Vous allez obtenir quelque chose comme ceci :

![arbre des fichiers](../assets/methode%20dart%20-%20arbre.png)
> On constate ici que dart nous a créer 4 dossiers et plus de 6 fichiers. Les dossiers et fichiers principaux sont <code>auto.dart</code> dans le dossier <code>bin</code> qui sera le point d'entrée de notre application dart, le dossier <code>lib</code> qui regroupe nos code partagée, le dossier <code>test</code> pour contenir nos tests unitaire, le fichier <code>pubspec.yaml</code> qui contient les configurations et dépencent de notre project. 

![Code principaux](../assets/Projet%20avec%20la%20méthode%20dart%20-%20code.png)
> Pour exécuter votre code lancer la commande <code language="bash">dart run</code> pour lancer l'exécution du code.<br>
Le résultat devrait ressembler à ceci : 

![Résultat du premier programme créer avec les outils de dart](../assets/resultat%20premier%20programme%20créer%20avec%20les%20outils%20dart.png)

Les codes sont disponible dans le dossier code à cette adresse [code chapitre 1](./code/)

### Dans la prochain chapitre on abordera les commentaires leurs utilités et comment les utilisés.