import 'package:flutter/material.dart';

import '../../../components/components.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      style: const TextStyle(color: AppColors.lightColor),
      decoration: const InputDecoration(
        labelText: 'Usuário',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
