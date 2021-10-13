import 'package:flutter/material.dart';


class ExitButton extends StatelessWidget {
  final void Function() onPressed;

  ExitButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: 'Close app',
      heroTag: 'sair',
      child: new Icon(Icons.close),
      backgroundColor: Colors.blue[600],
      foregroundColor: Colors.white,
    );
  }
}
