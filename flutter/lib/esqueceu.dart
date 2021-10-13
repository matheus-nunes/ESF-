import 'package:flutter/material.dart';

import 'botoes/botao.dart';
import 'texto.dart';

class Esqueceu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar'),
      ),
      body: Column(
        children: [
          Texto(
              icone: Icons.add,
              textoHint: 'EMAIL',
              tipoTextoEntrada: TextInputType.text,
              textoAcaoSaida: TextInputAction.done),
          Botao(
            nomeBotao: 'ENVIAR',
            condicao: () {},
          )
        ],
      ),
    );
  }
}
