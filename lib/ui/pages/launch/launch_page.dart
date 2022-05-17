import 'package:flutter/material.dart';

import '../../components/components.dart';
import './components/components.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NewsWidget(),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 40, top: 40, bottom: 8),
          child: const Text(
            'Lançamentos',
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
