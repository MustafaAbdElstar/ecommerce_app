import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Orientation orientation = Device.orientation;
ThemeData themeArabic = ThemeData(
  fontFamily: 'Cairo',
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.cyan,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: orientation == Orientation.portrait ? 25.sp : 18.sp,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: orientation == Orientation.portrait ? 22.sp : 15.sp,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: orientation == Orientation.portrait ? 15.sp : 12.sp,
    ),
  ),
);

ThemeData themeEnglish = ThemeData(
  fontFamily: 'PlayfairDisplay',
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Colors.cyan,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: orientation == Orientation.portrait ? 25.sp : 18.sp,
    ),
    displayMedium: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: orientation == Orientation.portrait ? 22.sp : 15.sp,
    ),
    displaySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: orientation == Orientation.portrait ? 15.sp : 12.sp,
    ),
  ),
);
