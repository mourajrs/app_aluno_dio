import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  //metodos estaticos podem ser acessados sem precisar instanciar
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  //metodos estaticos podem ser acessados sem precisar instanciar
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }

  //metodo lerDouble() com tratamento de exceção equivalente ao parseTry()
  //pois caso nao tiver resultado ele retorna null
  static double? lerDouble() {
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTextoComSaida(String texto, String valorSaida) {
    do {
      try {
        var value = lerStringComTexto(texto);

        if (value == valorSaida) {
          return null;
        }

        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}
