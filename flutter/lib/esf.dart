import 'package:flutter/material.dart';
import 'botoes/botaoesf.dart';

class Esf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ESF'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(padding: EdgeInsets.all(70)),
          Botaoesf(nomeBotao: 'ESF BRASINO'),
          Padding(padding: EdgeInsets.all(70)),
          Botaoesf(nomeBotao: 'ESF CENTRAL'),
          Padding(padding: EdgeInsets.all(70)),
          Botaoesf(nomeBotao: 'ESF SÃO JOSÉ')
        ],
      ),
    );
  }
}
