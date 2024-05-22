import 'dart:io';

bool numeroPrimo(int numero) {
  if (numero <= 1) return false;
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false;
  }
  return true;
}

int fatorial(int numero) {
  if (numero <= 1){
    return 1;
  } 
  return numero * fatorial(numero - 1);
}

void main() {
  stdout.write('Digite um número inteiro: ');
  int? numero = int.tryParse(stdin.readLineSync()!);

  if (numero == null) {
    print('Número inválido.');
    return;
  }

  if (numeroPrimo(numero)) {
    print('O número $numero é primo.');
  } else {
    print('O número $numero não é primo.');
  }
  
  int resultadoFatorial = fatorial(numero);
  print('O fatorial de $numero é $resultadoFatorial.');
}
