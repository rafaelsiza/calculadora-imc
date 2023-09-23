import 'package:test/test.dart';
import 'package:app_imc/models/calculadora_imc.dart';
import 'package:app_imc/models/pessoa.dart';



void main() {
  group('Calcular o Indice de Massa Comprotal', () {
    var testValues = {
      {'nome': 'P1', 'peso': 0.4, 'altura': 0.5}: 1.60,
      {'nome': 'P2', 'peso': 55, 'altura': 1.78}: 17.36,
      {'nome': 'P3', 'peso': 65, 'altura': 1.78}: 20.52,
      {'nome': 'P4', 'peso': 75, 'altura': 1.78}: 23.67,
      {'nome': 'P5', 'peso': 85, 'altura': 1.78}: 26.83,
      {'nome': 'P6', 'peso': 95, 'altura': 1.78}: 29.98,
      {'nome': 'P7', 'peso': 105, 'altura': 1.78}: 33.14,
    };

    testValues.forEach((values, expected) {
      test('Entrada: $values Esperado: $expected', () {
        Pessoa p = Pessoa(
            values['nome'].toString(),
            double.parse(values['peso'].toString()),
            double.parse(values['altura'].toString()));

        CalculadoraIMC c = CalculadoraIMC();
        expect(c.calcular(p), expected);
      });
    });
  });
}