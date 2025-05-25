import 'package:applicationgetx/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeArabic = ThemeData(
  fontFamily: "Lora",
  textTheme: TextTheme(
    titleMedium: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: Appcolor.black),
    bodyMedium:
        TextStyle(height: 2, color: Appcolor.grey, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26, color: Appcolor.black),
    titleSmall: TextStyle(fontSize: 14, color: Appcolor.black),
  ),
);
ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: TextTheme(
    titleMedium: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: Appcolor.black),
    bodyMedium:
        TextStyle(height: 2, color: Appcolor.grey, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 26, color: Appcolor.black),
    titleSmall: TextStyle(fontSize: 14, color: Appcolor.black),
  ),
);
