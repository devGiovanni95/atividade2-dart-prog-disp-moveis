import 'dart:io';

void main() {
  stdout.writeln('Digite uma frase: ');
  String? frase = stdin.readLineSync();

  String? maiusculas = frase?.toUpperCase();
  print("Frase convertida em letras maiusculas:");
  print(maiusculas);

  List<String> palavras = [];

  palavras.addAll(frase?.split(' ') as Iterable<String>);
  palavras.sort();
  print('Lista de palavras: $palavras');
  for(int i=0; i<palavras.length; i++){   
      print(palavras[i]);
    }
  

  bool contemDart = palavras.contains('Dart');
  if (contemDart) {
    print('A palavra "Dart" está presente na frase.');
  } else {
    print('A palavra "Dart" não está presente na frase.');
  }

}
