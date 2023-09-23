import 'package:app_imc/models/calculadora_imc.dart';
import 'package:app_imc/models/pessoa.dart';
import 'package:app_imc/utils/console_utils.dart';

void execute() {
  print("Bem vindo a calculadora de IMC Flutter:");

   String nome = ConsoleUtils.lerString("Nome: ");
  double peso = ConsoleUtils.lerDouble("Peso: ");
  double altura = ConsoleUtils.lerDouble("Altura: ");

  Pessoa p = Pessoa(nome, peso, altura);

  CalculadoraIMC c = CalculadoraIMC();
  c.resultado(p);
}
