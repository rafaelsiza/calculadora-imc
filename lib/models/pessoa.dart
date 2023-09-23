import 'dart:math';

import 'package:app_imc/exception/altura_invalida.dart';
import 'package:app_imc/exception/nome_invalido.dart';
import 'package:app_imc/exception/peso_invalido.dart';

class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

   Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  void setNome(nome) {
    if (nome.trim() == '') {
      throw NomeInvalidoException;
    }

    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(peso) {
    if (peso < 0.5) {
      throw PesoInvalidoException;
    }
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(altura) {
    if (altura < 0.5) {
      throw AlturaInvalidaException;
    }
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  double getIMC() {
    var imc = (_peso / pow(_altura, 2));

    return imc.isNaN ? 0 : imc;
  }

  @override //sobrescrita de método.
  String toString() {
    return {"Nome": _nome, "Peso": _peso, "Altura": _altura}.toString();
  }
}

