import 'package:flutter/material.dart';

class ButtonForgotPassword extends StatelessWidget {
  const ButtonForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: () {}, child: const Text('Esqueci minha senha')));
  }
}
