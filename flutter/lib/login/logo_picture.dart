import 'package:flutter/material.dart';

class LogoPicture extends StatelessWidget {
  LogoPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: _screenSize.width * 0.35,
        height: _screenSize.height * 0.25,
        child:
            Image.asset(
              "assets/imagens/cgs.jpg",
              fit: BoxFit.fill,
            ),
        
      ),
    );
  }
}
