import 'package:flutter/material.dart';

import '../../components/components.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Home',
      style: TextStyle(color: AppColors.lightColor),
    );
  }
}
