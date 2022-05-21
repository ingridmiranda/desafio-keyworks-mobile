import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/services.dart';
import '../../components/components.dart';
import './components/components.dart';

var controller = Get.put(LaunchService());

class LaunchPage extends StatefulWidget {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        const Flexible(flex: 5, child: NewsWidget()),
        Flexible(
          flex: 5,
          child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 40, bottom: 8),
                  child: const Text(
                    'Lançamentos',
                    style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, bottom: 30),
                  child: Container(
                    height: 250,
                    decoration: const BoxDecoration(
                        color: AppColors.secondaryColorDark,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: Obx(() {
                      return ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.lastFourLaunches.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () async {
                                controller.setMenuOption(1);
                                await controller.onMapTapped(index);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 21, top: 14, bottom: 14),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            controller.lastFourLaunches[index]
                                                    ?.name ??
                                                "Nome não informado",
                                            style: const TextStyle(
                                                color: AppColors.lightColor,
                                                fontSize: 16)),
                                        Text(
                                            controller.convertDateAndHour(
                                                controller
                                                    .lastFourLaunches[index]
                                                    ?.dateLocal),
                                            style: const TextStyle(
                                                color: AppColors.lightColor,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w300)),
                                      ],
                                    ),
                                    const Icon(Icons.place)
                                  ],
                                ),
                              ),
                            );
                          });
                    }),
                  ),
                ),
              ]),
        )
      ],
    );
  }
}
