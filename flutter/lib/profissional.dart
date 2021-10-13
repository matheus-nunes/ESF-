import 'package:flutter/material.dart';
import '/botoes/botaoesf.dart';

import 'botoes/botaotabela.dart';

class Profissional extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profissionais de Saúde'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20)),
            Botaotabela(nomeBotao: 'Dentista'),
            Padding(padding: EdgeInsets.all(20)),
            Botaoesf(nomeBotao: 'Fisioterapeuta'),
            Padding(padding: EdgeInsets.all(20)),
            Botaoesf(nomeBotao: 'Fonoaudiólogo'),
            Padding(padding: EdgeInsets.all(20)),
            Botaoesf(nomeBotao: 'Ginecologista'),
            Padding(padding: EdgeInsets.all(20)),
            Botaoesf(nomeBotao: 'Médico Clinico Geral'),
            Padding(padding: EdgeInsets.all(20)),
            Botaoesf(nomeBotao: 'Nutricionista'),
            Padding(padding: EdgeInsets.all(20)),
            Botaoesf(nomeBotao: 'Psicólogo'),
          ],
        ));
  }
}
