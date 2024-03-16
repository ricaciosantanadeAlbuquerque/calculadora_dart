import 'dart:io';

void main(List<String> args) {
  escolha(op: menu());
}

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

void escolha({required int op}) {
  switch (op) {
    case 1:
      print("Digite o primeiro valor");
      String? valorEntrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? valorEntrada2 = stdin.readLineSync();

      if (valorEntrada1 != null && valorEntrada2 != null) {
        if (valorEntrada1.isNotEmpty && valorEntrada2.isNotEmpty) {
          try {
            double valor1 = double.parse(valorEntrada1);
            double valor2 = double.parse(valorEntrada2);
            soma(valor1: valor1, valor2: valor2);
          } catch (e) {
            throw Exception('ERRO! valores $valorEntrada1 e $valorEntrada2 não são numéricos');
          }
        } else {
          print('ERRO! valor vazio o programa será encerrado !');
          exit(0);
        }
      } else {
        print('ERRO! valor nulo o programa será encerrado !');
        exit(0);
      }
      break;
    case 2:
      print("Digite o primeiro valor");
      String? valorEntrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? valorEntrada2 = stdin.readLineSync();

      if (valorEntrada1 != null && valorEntrada2 != null) {
        if (valorEntrada1.isNotEmpty && valorEntrada2.isNotEmpty) {
          try {
            double valor1 = double.parse(valorEntrada1);
            double valor2 = double.parse(valorEntrada2);
            print(valor1);
            print(valor2);
          } catch (e) {
            throw Exception('ERRO! valores $valorEntrada1 e $valorEntrada2 não são numéricos');
          }
        } else {
          print('ERRO! valor vazio o programa será encerrado !');
          exit(0);
        }
      } else {
        print('ERRO! valor nulo o programa será encerrado !');
        exit(0);
      }
      break;
    case 3:
      print("Digite o primeiro valor");
      String? valorEntrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? valorEntrada2 = stdin.readLineSync();

      if (valorEntrada1 != null && valorEntrada2 != null) {
        if (valorEntrada1.isNotEmpty && valorEntrada2.isNotEmpty) {
          try {
            double valor1 = double.parse(valorEntrada1);
            double valor2 = double.parse(valorEntrada2);
          } catch (e) {
            throw Exception('ERRO! valores $valorEntrada1 e $valorEntrada2 não são numéricos');
          }
        } else {
          print('ERRO! valor vazio o programa será encerrado !');
          exit(0);
        }
      } else {
        print('ERRO! valor nulo o programa será encerrado !');
        exit(0);
      }
      break;
    case 4:
      print("Digite o primeiro valor");
      String? valorEntrada1 = stdin.readLineSync();
      print('Digite o segundo valor');
      String? valorEntrada2 = stdin.readLineSync();

      if (valorEntrada1 != null && valorEntrada2 != null) {
        if (valorEntrada1.isNotEmpty && valorEntrada2.isNotEmpty) {
          try {
            double valor1 = double.parse(valorEntrada1);
            double valor2 = double.parse(valorEntrada2);
          } catch (e) {
            throw Exception('ERRO! valores $valorEntrada1 e $valorEntrada2 não são numéricos');
          }
        } else {
          print('ERRO! valor vazio o programa será encerrado !');
          exit(0);
        }
      } else {
        print('ERRO! valor nulo o programa será encerrado !');
        exit(0);
      }
      break;
    case 5:
      print('Encerrando o programa');
      exit(0);
  }
}

// soma

void soma({required double valor1, required double valor2}) {
  print('O resultado da soma é ${valor1 + valor2}');
}
