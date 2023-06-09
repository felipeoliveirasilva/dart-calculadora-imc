import 'package:dart_calculadora_imc/classes/pessoa.dart';
import 'package:dart_calculadora_imc/exceptions/exceptions.dart';
import 'package:test/test.dart';

void main() {
  //TESTE SITUACOES DE SUCESSO
  test('Verificar calculo IMC', () {
    Pessoa pessoa = Pessoa("Felipe", 130, 1.73);
    expect(pessoa.calculaImc(), equals(43.0));
  });

  test('Verificar classificação IMC', () {
    Pessoa pessoa = Pessoa("Felipe", 130, 1.73);
    expect(pessoa.classificacaoImc(), equals("Obesidade grau III (morbida)"));
  });

  test('Verificar resultado IMC', () {
    Pessoa pessoa = Pessoa("Felipe", 130, 1.73);
    expect(
        pessoa.resultadoImc(),
        equals(
            "Felipe, seu IMC é igual a 43.0 e se encaixa na classificação: Obesidade grau III (morbida)"));
  });

  //TESTE SITUACOES DE ERRO
  test('Teste de exceção ao não digitar o nome.', () {
    expect(() => Pessoa("", 130, 1.73),
        throwsA(TypeMatcher<NomeInvalidoException>()));
  });

  test('Teste de exceção, peso inválido.', () {
    expect(() => Pessoa("Felipe", 400, 1.73),
        throwsA(TypeMatcher<PesoInvalidoException>()));
  });

  test('Teste de exceção, altura inválido.', () {
    expect(() => Pessoa("Felipe", 130, 0),
        throwsA(TypeMatcher<AlturaInvalidaException>()));
  });
}
