import 'package:flutter/material.dart';

import '../../components/app_colors.dart';

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
            children: [
              Image.asset('lib/ui/assets/rocket_launch_black_24dp.png'),
              const Padding(
                padding: EdgeInsets.only(top: 55, bottom: 36),
                child: Text(
                  'Acesso',
                  style: TextStyle(fontSize: 25, color: AppColors.lightColor),
                ),
              ),
              TextFormField(
                cursorColor: AppColors.primaryColor,
                decoration: const InputDecoration(
                  labelText: 'Usuário',
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 36),
              TextFormField(
                cursorColor: AppColors.primaryColor,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 8),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text('Esqueci minha senha'))),
              const SizedBox(height: 5),
              ElevatedButton(
                  onPressed: () {}, child: Text('Acessar'.toUpperCase()))
            ],
          ),
        ));
  }
}
