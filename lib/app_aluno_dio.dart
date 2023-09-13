import 'dart:convert';
import 'dart:io';

import 'package:app_aluno_dio/models/console_utils.dart';

import 'models/Aluno.dart';

void execute() {
  print("Sistema de cálculo de notas");
  //metodos estaticos podem ser acessados sem precisar instanciar
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno: ");
  var aluno = Aluno(nome);
  double? nota;

  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida("Digite a nota ou S para SAIR!!", "S");
    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);
  print(aluno.getNotas());

  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} foi aprovado com nota ${aluno.retornaMedia()}");
  } else {
    print("O aluno ${aluno.getNome()} foi reprovado com nota ${aluno.retornaMedia()}");
  }
}
