import 'package:flutter/material.dart';
import 'package:matule_v2/core/appColors.dart';

final themeData = ThemeData(
  primaryColor: Appcolors.accent,
  textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 32, color: Appcolors.text),
      displayMedium: TextStyle(fontSize: 16, color: Appcolors.subTextDark),
      titleMedium: TextStyle(fontSize: 16, color: Appcolors.text)),
  buttonTheme: ButtonThemeData(
    buttonColor: Appcolors.accent,
    shape: Border.all(
      width: 14,
      color: Appcolors.accent,
    ),
  ),
);
