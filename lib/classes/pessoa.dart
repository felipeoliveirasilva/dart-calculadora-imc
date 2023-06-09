import '../exceptions/exceptions.dart';

class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(String nome, double peso, double altura) {
    setNome(nome);
    setPeso(peso);
    setAltura(altura);
  }

  void setNome(String nome) {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    } else {
      _nome = nome;
    }
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    if (peso > 300 || peso == 0) {
      throw PesoInvalidoException();
    } else {
      _peso = peso;
    }
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    if (altura == 0 || altura > 3) {
      throw AlturaInvalidaException();
    } else {
      _altura = altura;
    }
  }

  double getAltura() {
    return _altura;
  }

  double calculaImc() {
    double imc = getPeso() / (getAltura() * getAltura());
    return double.parse(imc.roundToDouble().toStringAsFixed(2));
  }

  String classificacaoImc() {
    double imc = calculaImc();

    switch (imc) {
      case < 16:
        return "Magreza leve";
      case >= 16 && < 17:
        return "Magreza moderada";
      case >= 17 && < 18.5:
        return "Magreza leve";
      case >= 18.5 && < 25:
        return "Saudável";
      case >= 25 && < 30:
        return "Sobrepeso";
      case >= 30 && < 35:
        return "Obesidade grau I";
      case >= 35 && < 40:
        return "Obesidade grau II (severa)";
      case >= 40:
        return "Obesidade grau III (morbida)";
      default:
        return "Valor IMC inválido";
    }
  }

  String resultadoImc() {
    return "${getNome()}, seu IMC é igual a ${calculaImc()} e se encaixa na classificação: ${classificacaoImc()}";
  }
}
