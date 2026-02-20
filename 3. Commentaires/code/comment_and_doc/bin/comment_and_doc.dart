import 'package:comment_and_doc/comment_and_doc.dart' as comment_and_doc;

// Un commentaire sur une seule ligne

/*
  - un autre commentaire mais qui peut être sur plusieur ligne
  - Un second

  La fonction main est le point d'entrée par défaut de mon app
  print('Un code qui ne jamais s'afficher');
*/

void main(List<String> arguments) {
  print('Hello world: ${comment_and_doc.calculate()}!');
}
