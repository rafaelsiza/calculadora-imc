import 'dart:math';

import 'package:app_imc/models/pessoa.dart';

class CalculadoraIMC {
  double calcular(Pessoa p) {
    double imc = p.getPeso() / pow(p.getAltura(), 2);
    return double.parse(imc.toStringAsFixed(2));
  }

  void resultado(Pessoa p) {
    double imc = calcular(p);

    if (imc < 18.5) {
      print("Magro(a)");
    }

    if ((imc >= 18.5) && (imc <= 24.9)) {
      print("Normal");
    }

    if ((imc >= 25.0) && (imc <= 29.9)) {
      print("Sobrepeso");
    }

    if ((imc >= 30.0) && (imc <= 34.9)) {
      print("Obesidade grau I");
    }

    if ((imc >= 35.0) && (imc <= 39.9)) {
      print("Obesidade grau II");
    }
    if (imc >= 40) {
      print("Obesidade grau III");
    }

    imc.isNegative ? "nao" : imc;
  }
}
