import 'package:esf/botoes/botao.dart';
import 'package:esf/texto.dart';
import 'package:esf/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../esf.dart';
import '../../logado.dart';
import 'logo_picture.dart';
import 'exit_button.dart';

class BodyLogin extends StatefulWidget {
  BodyLogin({Key? key}) : super(key: key);

  @override
  _BodyLoginState createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  final _ctrlLogin = TextEditingController();
  final _ctrlPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  _logoImageEsf() {
    return LogoPicture();
  }

  _exitButton() {
    return ExitButton(
      onPressed: () => SystemNavigator.pop(),
    );
  }

  void validate() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_ctrlLogin.text == '12345' && _ctrlPassword.text == 'testeusuario') {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Esf()));
      } else if (_ctrlLogin.text == '92.324.748/0001-68' &&
          _ctrlPassword.text == 'admin9232') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => UserList()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Login Invalido!'),
            action: SnackBarAction(
              label: 'Atenção Tentar de Novo!',
              onPressed: () {
                _ctrlLogin.clear();
                _ctrlPassword.clear();
              },
            ),
          ),
        );
      }
    } else {
      print("não validado");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context)
        .size; //pega o tamanho da tela independente do dispositivo
    return SingleChildScrollView(
      child: Center(
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.only(top: _screenSize.height * 0.12),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'ESF +',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  _logoImageEsf(),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
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
                  ),
                  Texto(
                    icone: Icons.person,
                    textoHint: 'Login',
                    tipoTextoEntrada: TextInputType.number,
                    textoAcaoSaida: TextInputAction.next,
                    controladora: _ctrlLogin,
                    validacao: (texto) {
                      if (texto.isEmpty) {
                        return 'Preencha o campo com Numeros';
                      }
                    },
                  ),
                  Texto(
                    icone: Icons.lock,
                    textoHint: 'Senha',
                    tipoTextoEntrada: TextInputType.text,
                    textoAcaoSaida: TextInputAction.done,
                    controladora: _ctrlPassword,
                    validacao: (texto) {
                      if (texto.isEmpty) {
                        return 'Preencha o campo';
                      }
                    },
                  ),
                  Container(
                    height: _screenSize.height * 0.03,
                    width: _screenSize.width * 0.8,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {},
                        //Navigator.pushNamed(context, 'EsqueceuSenha'),
                        child: Text(
                          'Esqueceu a minha Senha!',
                          style: TextStyle(
                              fontSize: 16, color: Colors.red, height: 1.5),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 20,
                  ),
                  Botao(nomeBotao: 'Login', condicao: () => validate()),
                  Container(
                    height: _screenSize.height * 0.03,
                    width: _screenSize.width * 0.8,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Logado()),
                          );
                        },
                        child: Text(
                          'Não possui conta? Cadastre-se!',
                          style: TextStyle(
                              fontSize: 16, color: Colors.red, height: 1.5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: _screenSize.height * 0.03),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: _exitButton(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
