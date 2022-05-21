import 'package:flutter/material.dart';

import './components/components.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: const [
        Flexible(flex: 5, child: NewsWidget()),
        Flexible(flex: 5, child: LaunchInfoWidget())
      ],
    );
  }
}
