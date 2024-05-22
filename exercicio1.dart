import 'dart:io';

void main() {
  stdout.writeln('Digite o primeiro número : ');
  int? n1 =  int.tryParse(stdin.readLineSync()!);

  stdout.writeln('Digite o segundo número : ');
  int? n2 =  int.tryParse(stdin.readLineSync()!);

  if (n2 == null || n1 == null) {
    print('Número inválido.');
    return;
  }

  int soma = n1 + n2;
  int subtracao = n1 - n2;
  int multiplicacao = n1 * n2;
  double divisao = n1 / n2;
  int modulo = n1 % n2;

  String parImparN1 = (n1 % 2) == 0 ? 'Par' : 'Impar';
  String parImparN2 = (n2 % 2) == 0 ? 'Par' : 'Impar';

print('soma = $soma ');
print('subtracao = $subtracao ');
print('multiplicacao = $multiplicacao ');
print('divisao = $divisao ');
print('modulo = $modulo ');
print('O primeiro número é $parImparN1');
print('O segundo número é $parImparN2');

print('Exibindo os numeros entre os dois selecionados:');
int a;
int b;

if(n1<=n2){
    a = n1;
    b = n2;
  }else{
    a = n2;
    b = n1;
}
  for( a; a <= b; a++){
    print('$a');
  }
}
