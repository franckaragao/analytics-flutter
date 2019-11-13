
import 'package:flutter/material.dart';

final ThemeData themeData = new ThemeData(
    fontFamily: 'Roboto',
    brightness: Brightness.light,
    primarySwatch: MaterialColor(
        AppColors.primary[500].value, AppColors.primary),
    primaryColor: AppColors.primary[500],
    primaryColorBrightness: Brightness.light,
    accentColor: AppColors.primary[500],
    accentColorBrightness: Brightness.light,
    primaryTextTheme: TextTheme(
    title: TextStyle(
      color: Colors.white
    )
  ),
);

class AppColors {
  AppColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> primary = const <int, Color>{
    50: const Color(0xffede0f3),
    100: const Color(0xffd1b3e0),
    200: const Color(0xffb380cc),
    300: const Color(0xff944db8),
    400: const Color(0xff7d26a8),
    500: const Color(0xff660099),
    600: const Color(0xff5e0091),
    700: const Color(0xff530086),
    800: const Color(0xff49007c),
    900: const Color(0xff38006b)
  };
}