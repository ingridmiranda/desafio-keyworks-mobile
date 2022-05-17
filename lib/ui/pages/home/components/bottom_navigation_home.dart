import 'package:flutter/material.dart';

class BottomNavigationHome extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;
  final List<Color> currentColor;
  const BottomNavigationHome(
      {Key? key,
      required this.currentIndex,
      required this.onTap,
      required this.currentColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: BottomNavigationBar(
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: currentIndex,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: CircleAvatar(
                      backgroundColor: currentColor[0],
                      child: const Icon(Icons.home)),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: CircleAvatar(
                      backgroundColor: currentColor[1],
                      child: const Icon(Icons.place)),
                ),
                label: 'Mapa'),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: CircleAvatar(
                      backgroundColor: currentColor[2],
                      child: const Icon(Icons.settings)),
                ),
                label: 'Configurações')
          ]),
    );
  }
}
