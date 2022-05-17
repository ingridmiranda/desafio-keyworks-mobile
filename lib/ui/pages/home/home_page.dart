import 'package:desafio_keyworks/ui/pages/home/components/components.dart';
import 'package:flutter/material.dart';

import '../../components/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  final _currentColor = [
    AppColors.primaryColor,
    AppColors.secondaryColor,
    AppColors.secondaryColor
  ];

  void _setMenuOption(int value) {
    setState(() {
      _currentIndex = value;
      _currentColor.asMap().forEach((index, element) {
        if (index == value) {
          _currentColor[index] = AppColors.primaryColor;
        } else {
          _currentColor[index] = AppColors.secondaryColor;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Home'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      bottomNavigationBar: BottomNavigationHome(
          currentIndex: _currentIndex,
          onTap: _setMenuOption,
          currentColor: _currentColor),
      body: const Text('Home'),
    );
  }
}
