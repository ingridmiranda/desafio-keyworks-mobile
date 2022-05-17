import 'package:flutter/material.dart';

import '../pages/pages.dart';
import './components.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Keyworks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
