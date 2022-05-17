import 'package:flutter/material.dart';

import 'package:desafio_keyworks/ui/pages/pages.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: Text('Acessar'.toUpperCase()));
  }
}
