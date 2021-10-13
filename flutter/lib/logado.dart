import 'package:flutter/material.dart';

import 'botoes/botao.dart';
import 'texto.dart';

class Logado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Texto(
                  icone: Icons.add,
                  textoHint: 'Nome',
                  tipoTextoEntrada: TextInputType.text,
                  textoAcaoSaida: TextInputAction.next),
              Texto(
                  icone: Icons.add,
                  textoHint: 'CPF',
                  tipoTextoEntrada: TextInputType.number,
                  textoAcaoSaida: TextInputAction.next),
              Texto(
                  icone: Icons.add,
                  textoHint: 'RG',
                  tipoTextoEntrada: TextInputType.number,
                  textoAcaoSaida: TextInputAction.next),
              Texto(
                  icone: Icons.add,
                  textoHint: 'Cartão Sus',
                  tipoTextoEntrada: TextInputType.number,
                  textoAcaoSaida: TextInputAction.next),
              Texto(
                  icone: Icons.add,
                  textoHint: 'Data de Nascimento',
                  tipoTextoEntrada: TextInputType.datetime,
                  textoAcaoSaida: TextInputAction.next),
              Texto(
                  icone: Icons.add,
                  textoHint: 'Email',
                  tipoTextoEntrada: TextInputType.emailAddress,
                  textoAcaoSaida: TextInputAction.next),
              Texto(
                  icone: Icons.add,
                  textoHint: 'Localidade',
                  tipoTextoEntrada: TextInputType.text,
                  textoAcaoSaida: TextInputAction.next),
              Texto(
                  icone: Icons.add,
                  textoHint: 'SENHA',
                  tipoTextoEntrada: TextInputType.text,
                  textoAcaoSaida: TextInputAction.done),
              Botao(
                nomeBotao: 'SALVAR',
                condicao: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
