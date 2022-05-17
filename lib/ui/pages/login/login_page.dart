import 'package:flutter/material.dart';

import './components/components.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HeaderLogin(),
              EmailInput(),
              SizedBox(height: 36),
              PasswordInput(),
              SizedBox(height: 8),
              ButtonForgotPassword(),
              SizedBox(height: 5),
              ButtonLogin()
            ],
          ),
        ));
  }
}
