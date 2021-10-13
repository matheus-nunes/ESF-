import 'package:flutter/material.dart';



class Botao extends StatelessWidget {
  final String nomeBotao;

  final Function() condicao;

  const Botao({Key? key, required this.nomeBotao, required this.condicao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Container(
      height: tamanho.height * 0.08,
      width: tamanho.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue,
      ),
      child: OutlinedButton(
        onPressed: condicao,
        child: Text(
          nomeBotao,
          style: TextStyle(fontSize: 22, color: Colors.white, height: 1.5)
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
