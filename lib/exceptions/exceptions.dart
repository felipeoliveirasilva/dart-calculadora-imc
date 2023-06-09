class NomeInvalidoException implements Exception {
  String error() => "Nome inválido";

  @override
  String toString() {
    return "NomeInvalidoException: ${error()}";
  }
}

class PesoInvalidoException implements Exception {
  String error() => "Peso inválido";

  @override
  String toString() {
    return "PesoInvalidoException: ${error()}";
  }
}

class AlturaInvalidaException implements Exception {
  String error() => "Altura inválida";

  @override
  String toString() {
    return "AlturaInvalidaException: ${error()}";
  }
}
