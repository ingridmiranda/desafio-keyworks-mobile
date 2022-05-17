import 'package:flutter/material.dart';

import '../../../components/components.dart';

class CircleList extends StatelessWidget {
  final int currentItem;
  const CircleList({Key? key, required this.currentItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 10,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (index == currentItem)
                      ? AppColors.lightColor
                      : AppColors.lightColor.withOpacity(0.36)),
            ),
          );
        },
      ),
    );
  }
}
