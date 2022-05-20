import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ui/components/app_pages.dart';
import '../pages/pages.dart';
import './components.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Desafio Keyworks',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      theme: ThemeData(
          fontFamily: 'Roboto',
          iconTheme: const IconThemeData(color: AppColors.lightColor),
          primaryColor: AppColors.primaryColor,
          backgroundColor: AppColors.darkColor,
          scaffoldBackgroundColor: AppColors.darkColor,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: AppColors.primaryColor),
          inputDecorationTheme: AppThemeConfigurations.inputDecorationApp,
          textButtonTheme: AppThemeConfigurations.textButtonApp,
          elevatedButtonTheme: AppThemeConfigurations.elevatedButtonApp,
          appBarTheme: AppThemeConfigurations.appBarApp,
          bottomNavigationBarTheme: AppThemeConfigurations.bottomNavigationApp),
      home: const LoginPage(),
    );
  }
}
