import 'package:flutter/material.dart';

import '../../components/components.dart';
import '../../pages/pages.dart';
import './components/components.dart';

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
  final _widgetsList = const [LaunchPage(), MapPage(), ConfigurationsPage()];
  final _titleList = ['Home', 'Mapa', 'Configurações'];

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
        title: Text(_titleList[_currentIndex]),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      bottomNavigationBar: BottomNavigationHome(
          currentIndex: _currentIndex,
          onTap: _setMenuOption,
          currentColor: _currentColor),
      body: _widgetsList[_currentIndex],
    );
  }
}
