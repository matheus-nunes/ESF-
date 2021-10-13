import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  final IconData icone;
  final String textoHint;
  final TextInputType tipoTextoEntrada;
  final TextInputAction textoAcaoSaida;
  final TextEditingController? controladora;
  final FormFieldValidator? validacao;

  const Texto({
    Key? key,
    required this.icone,
    required this.textoHint,
    required this.tipoTextoEntrada,
    required this.textoAcaoSaida,
    this.controladora,
    this.validacao,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: tamanho.height * 0.08,
        width: tamanho.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[500],
        ),
        child: Center(
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  icone,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              hintText: textoHint,
              hintStyle:
                  TextStyle(fontSize: 22, color: Colors.white, height: 1.5),
            ),
            style: TextStyle(fontSize: 22, color: Colors.white, height: 1.5),
            keyboardType: tipoTextoEntrada,
            textInputAction: textoAcaoSaida,
            controller: controladora,
            validator: validacao,
          ),
        ),
      ),
    );
  }
}
