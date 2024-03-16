import 'dart:io';

void main(List<String> args) {}

int menu() {
  print('========== Menu ==========');

  print('[1] para somar');
  print('[2] para subtrair');
  print('[3] para multiplicar');
  print('[4] para dividir');
  print('[5] para sair');
  String? op = stdin.readLineSync();

  // tratamento do valor de entrada.

  if (op != null) {
    if (op.isNotEmpty) {
      try {
        
        int num1 = int.parse(op);

        return num1;
      } catch (e) {
        throw Exception('ERRO!! o valor $op não é numérico ');
      }
    } else {
      print('Erro!!! o Valor está vazio.');
      exit(0);
    }
  } else {
    print('ERRO! valor nulo, O programa será encerrado ');
    exit(0);
  }
}
