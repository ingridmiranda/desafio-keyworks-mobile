import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../domain/entities/entities.dart';
import '../../../components/components.dart';
import '../../pages.dart';
import './components.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scrollController = ItemScrollController();
    final newsText = [
      'Geomagnetic storm and recently deployed starlink satellites',
      'Starship Update',
      'Geomagnetic storm and recently deployed starlink satellites',
    ];
    final newsImages = [
      'lib/ui/assets/images/image27.png',
      'lib/ui/assets/images/image26.png',
      'lib/ui/assets/images/image28.png'
    ];

    _changePosition(int value) {
      _scrollController.jumpTo(index: value);
    }

    return SizedBox(
      height: 300,
      child: ScrollablePositionedList.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemScrollController: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NewsPage(
                          newsEntity: NewsEntity(
                              id: index,
                              image: newsImages[index],
                              title: newsText[index],
                              source: 'Space X',
                              contentEntity: NewsContentEntity(
                                  textTitle: "Lorem ${faker.lorem.word()}",
                                  text:
                                      "   ${faker.lorem.sentence()} ${faker.lorem.sentence()}\n\n   ${faker.lorem.sentence()} ${faker.lorem.sentence()} ${faker.lorem.sentence()}\n\n   ${faker.lorem.sentence()} ${faker.lorem.sentence()} ${faker.lorem.sentence()} ${faker.lorem.sentence()}\n\n   ${faker.lorem.sentence()} ${faker.lorem.sentence()} ${faker.lorem.sentence()}}")))));
            },
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  child: Stack(
                    alignment: Alignment.center,
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        newsImages[index],
                        fit: BoxFit.fitWidth,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          index == 0
                              ? const SizedBox()
                              : IconButton(
                                  onPressed: () {
                                    _changePosition(--index);
                                  },
                                  icon: Icon(Icons.arrow_back_ios,
                                      size: 45,
                                      color: AppColors.lightColor
                                          .withOpacity(0.64))),
                          Flexible(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 45, right: 15),
                              child: Text(
                                newsText[index].toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.lightColor),
                              ),
                            ),
                          ),
                          index == 2
                              ? const SizedBox()
                              : IconButton(
                                  onPressed: () {
                                    _changePosition(++index);
                                  },
                                  icon: Icon(Icons.arrow_forward_ios,
                                      size: 45,
                                      color: AppColors.lightColor
                                          .withOpacity(0.64)))
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: CircleList(currentItem: index),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
