import 'package:flutter/material.dart';
import 'package:matule_v2/core/app_color.dart';

ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.bloc,
    primaryColor: AppColor.accent,
    textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 32, color: AppColor.text),
        displayMedium: TextStyle(fontSize: 16, color: AppColor.subTextDark),
        bodyMedium: TextStyle(fontSize: 16, color: AppColor.text)));
