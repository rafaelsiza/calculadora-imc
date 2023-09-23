class AlturaInvalidaException implements Exception {
  
  String error() => "Altura inválido";


@override
  String toString() {
    return "AlturaInvalidaException: ${error()}";
  }

}
