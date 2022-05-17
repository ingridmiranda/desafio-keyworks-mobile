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
        inputDecorationTheme: const InputDecorationTheme(
            contentPadding: EdgeInsets.only(top: 13, bottom: 10, left: 12),
            labelStyle: TextStyle(color: AppColors.secondaryColorLight),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: AppColors.secondaryColorLight)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: AppColors.primaryColor)),
            floatingLabelStyle: TextStyle(color: AppColors.primaryColor),
            alignLabelWithHint: true),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith((states) =>
              const TextStyle(fontWeight: FontWeight.normal, fontSize: 14)),
          shape: MaterialStateProperty.resolveWith((states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          foregroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return AppColors.primaryColor;
            } else {
              return AppColors.lightColor;
            }
          }),
        )),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
          textStyle: MaterialStateProperty.resolveWith((states) =>
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          shape: MaterialStateProperty.resolveWith((states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered)) {
              return AppColors.secondaryColorLight;
            } else {
              return AppColors.primaryColor;
            }
          }),
          foregroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.white),
          padding: MaterialStateProperty.resolveWith(
            (states) =>
                const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
          ),
        )),
      ),
      home: const LoginPage(),
    );
  }
}
