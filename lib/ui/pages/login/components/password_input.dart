import 'package:flutter/material.dart';

import '../../../components/components.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      decoration: const InputDecoration(
        labelText: 'Senha',
      ),
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
