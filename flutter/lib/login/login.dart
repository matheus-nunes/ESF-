import 'package:flutter/material.dart';

import 'body_login.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //metodo body
  Widget _body() {
    return BodyLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,

      body: Stack(
        children: [
          _body(),
        ],
      ),
    );
  }
}
