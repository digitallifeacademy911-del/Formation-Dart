# Installation et Configuration du language dart

J'aborderai dans cette section du cours l'installation avec le dart SDK mais aussi les différentes plateforme de compilation en ligne et pour ce qui souhaite continuer plus-tard avec flutter l'installation avec flutter.

> Qu'est ce que dart fais de mieux ?

- **Polyvalence et Multiplateforme :** Dart permet de développer des applications mobiles, web et de bureau avec le même code, notamment grâce à Flutter. Il se compile en code machine natif (ARM ou x64) pour la performance, et se transpile en JavaScript pour le web.

- **Productivité accrue (Développement rapide) :** La fonctionnalité de "rechargement à chaud" (Hot Reload) de Flutter, propulsée par Dart, permet de visualiser les modifications de code en temps réel sans perdre l'état de l'application.

- **Syntaxe simple et claire :** La syntaxe de Dart est facile à apprendre, surtout pour ceux qui ont des notions de C#, Java ou JavaScript. Elle est concise, ce qui rend le code plus lisible et facile à maintenir.

- **Langage moderne et typé :** Dart est un langage orienté objet qui utilise le typage statique pour une meilleure gestion des erreurs lors du développement. Il supporte l'inférence de type, rendant le code moins verbeux.

- **Soutien de Google :** Conçu et utilisé par Google (Google Ads, Shopping), Dart est un langage mature, open source et doté d'une communauté active.

- **Écosystème riche :** Dart dispose d'outils puissants (SDK) et de bibliothèques complètes pour le développement d'interfaces utilisateur riches. 

<br><br>


1. [Installation en locale avec le dart sdk](#installation-en-locale-du-dart-sdk)
2. [Installation avec le flutter sdk](#installation-avec-le-flutter-sdk)
3. [Compilation en ligne avec dartpad](#compilation-en-ligne-avec-dartpad)

## Installation en locale du dart sdk

> Le Dart SDK(Software Development Kit) fourni l'ensemble des outils, bibliothèques nécessaire à l'exécution d'un programme dart.Pour le télécharger se rendre sur la page suivante <a href="https://dart.dev/get-dart/archive">https://dart.dev/get-dart/archive</a>. Télécharger la version du programme pour votre plateforme(Windows, macos, Linux).


![Stable channels of dart sdk](./dart-sdk-archive.png)

Une fois le téléchargement terminer si vous êtes sur ubuntu, lancer les commandes suivantes:
```bash
$ sudo dpkg -i <nom_du_fichier>.deb

$ sudo apt install --fix-broken

$ export PATH="$PATH:/usr/lib/dart/bin" > ~/.bashrc

$ source ~/.bashrc
```

>- Sur windows:

Décompresser le fichier d'installation et ajouter le dossier bin au path(Variable d'environnement).

![Ajout au path windows](https://media.geeksforgeeks.org/wp-content/uploads/20200602155628/DART6-2.png)

>- Installation sur macos

Après avoir télécharger le fichier pour macos 

```zsh
$ brew tap dart-lang/dart
$ brew install dart
```

Pour vérifier lancer la commande 

```bash
$ dart --version
```
Si tous c'est bien passer la réponse devrait ressembler à ceci
```bash
Dart SDK version: 3.10.8 (stable) (Tue Jan 27 00:02:04 2026 -0800) on "linux_x64"
```



## Installation avec le flutter sdk

Si vous souhaitez plus tard continuer avec flutter il est préférable d'installer le flutter sdk puisqu'il intègre le dart sdk.<br>
> Pour ce faire rendez-vous sur [https://docs.flutter.dev/install/quick](https://docs.flutter.dev/install/quick) et suivez les instructions pour votre plateforme.<br><br>Une fois l'installation terminer lancer la commande :

```bash
$ dart --version
```
Si tous c'est bien passer la réponse devrait ressembler à ceci
```bash
Dart SDK version: 3.10.8 (stable) (Tue Jan 27 00:02:04 2026 -0800) on "linux_x64"
```

# Compilation en ligne avec dartpad

Si votre but est juste de faire des tests ou d'apprendre et que vous disposer d'une bonne connexion internet utiliser [DartPad](https://dartpad.dev/)