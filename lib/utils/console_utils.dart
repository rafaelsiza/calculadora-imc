import 'dart:io';
import 'dart:convert';

class ConsoleUtils {
  static String lerString(String msg) {
    if (msg.trim() != '') {
      print(msg);
    }
    var linha = stdin.readLineSync(encoding: utf8);
    return linha ?? '';
  }

  static double lerDouble(String msg) {
      try {
        var linha = lerString(msg);
        return double.parse(linha);
      } catch (e) {
        print('Número inválido.');
      }
    return 0.0;
  }
}