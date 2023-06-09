import 'dart:io';

import 'package:dart_calculadora_imc/exceptions/exceptions.dart';
import 'package:dart_calculadora_imc/utils/console_utils.dart';

import 'classes/pessoa.dart';

void execute() {
  print("Bem-vindo a Calculadora IMC");

  try {
    String nome = ConsoleUtils.lerStringComTexto("Digite o seu nome.");

    double peso = ConsoleUtils.lerDoubleComTexto("Digite o seu peso em Kg.");

    double altura = ConsoleUtils.lerDoubleComTexto(
        "Digite sua altura em metros (Ex: 1.80).");

    Pessoa pessoa = Pessoa(nome, peso, altura);
    print(pessoa.resultadoImc());
  } on NomeInvalidoException catch (e) {
    print(e);
    exit(0);
  } on PesoInvalidoException catch (e) {
    print(e);
    exit(0);
  } on AlturaInvalidaException catch (e) {
    print(e);
    exit(0);
  } catch (e) {
    print("Erro inesperado: $e");
  }
}
