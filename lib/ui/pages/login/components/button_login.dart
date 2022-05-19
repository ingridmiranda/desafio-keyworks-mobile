import 'package:desafio_keyworks/application/login/login_service.dart';
import 'package:flutter/material.dart';

import '../../pages.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _loginService = LoginService();
    return ElevatedButton(
        onPressed: () async {
          await _loginService.doLogin();
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: Text('Acessar'.toUpperCase()));
  }
}
