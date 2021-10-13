import 'package:esf/texto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'esqueceu.dart';
import 'botoes/botao.dart';
import 'logado.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var loginn = TextEditingController();
  final senha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Flexible(
                  child: Text('ESF +',
                    style: TextStyle(
                    fontSize: 60,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    shadows: <Shadow>[
                      Shadow(
                          blurRadius: 2.0, color: Color.fromARGB(255, 0, 0, 0))
                    ]),
              ),
              ),
              Center(
                  child: Container(
                margin: const EdgeInsets.all(60),
                alignment: Alignment.topCenter,
                height: 200,
                child: Image.asset('assets/imagens/cgs.jpg'),
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 100, 30),
                      child: Text(
                        'Cerro Grande do Sul  ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          foreground: Paint()
                            ..style = PaintingStyle.fill
                            ..strokeWidth = 1
                            ..color = Colors.blue[600]!,
                        ),
                      )),
                  Texto(
                    icone: Icons.email,
                    textoHint: 'CPF',
                    tipoTextoEntrada: TextInputType.number,
                    textoAcaoSaida: TextInputAction.next,
                    controladora: loginn,
                  ),
                  Texto(
                    icone: Icons.lock,
                    textoHint: 'Password',
                    tipoTextoEntrada: TextInputType.text,
                    textoAcaoSaida: TextInputAction.done,
                    controladora: senha,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Esqueceu()));
                    },
                    child: Text(
                      'Esqueceu O Password',
                      style: TextStyle(
                          fontSize: 22, color: Colors.black, height: 1.5),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Botao(
                      nomeBotao: 'Login',
                      condicao: () {
                       /*  print(loginn.text);
                        if (loginn.text == 13579 && senha == 123456) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Esf()));
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Logado()));
                        } */
                      }),
                 
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Logado()),
                  );
                },
                child: Container(
                  child: Text(
                    'Criar Um novo Usuario',
                    style:
                        TextStyle(fontSize: 22, color: Colors.red, height: 1.5),
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1, color: Colors.white))),
                ),
              ),
             
            ],
          ),
        ),
      ],
    ); //aqui
  }
}
